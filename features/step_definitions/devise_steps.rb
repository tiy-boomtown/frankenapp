Given(/^I do not have an account$/) do
  # no-op?
end

And(/^I'm on the sign up page$/) do
  visit '/users/sign_up'
end

When(/^I create a new account$/) do
  # User.create!
  fill_in 'user_email', with: 'james@example.com'
  fill_in 'user_password', with: 'hunter2'
  fill_in 'user_password_confirmation', with: 'hunter2'
  click_on 'Sign up'
end

Then(/^I should be on the home page$/) do
  # expect(page.current_path).to eq '/'
  expect(page.has_content? 'Home Page!').to eq true
end

And(/^I should see my email$/) do
  expect(page).to have_content 'james@example.com'
end