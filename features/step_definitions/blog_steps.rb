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