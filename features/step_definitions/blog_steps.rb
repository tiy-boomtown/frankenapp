Given(/^I'm a user$/) do
  @me = User.create! email: 'james@example.com', password: 'hunter2'
end

When(/^I favorite a post$/) do
  @post = Post.create! title: 'New Post'
  @me.add_favorite @post
end

Then(/^that post is in my favorites$/) do
  expect(@me.favorite_posts.include? @post).to eq true
end

And(/^I am in the posts' followers$/) do
  expect(@post.followers.include? @me).to eq true
end

# Model steps ^
# View steps v

Given(/^I'm logged in$/) do
  @user = User.create! email: 'a@b.com', password: 'hunter2'

  visit '/users/sign_in'
  fill_in 'user_email', with: 'a@b.com'
  fill_in 'user_password', with: 'hunter2'
  click_on 'Log in'
end

And(/^I'm viewing "([^"]*)"$/) do |title|
  @post = Post.create! title: title

  visit "/posts/#{@post.id}"
end

When(/^I click the favorite button$/) do
  click_on 'add_favorite'
end

Then(/^"([^"]*)" should be in my favorites$/) do |title|
  # Model
  # expect(user.favorites.include? post).to be true
  expect(@user.favorite_posts).to include @post

  # View
  visit '/dashboard'
  expect(page).to have_content title
end