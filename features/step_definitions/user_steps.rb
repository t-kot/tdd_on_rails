#coding: utf-8
When /^メールアドレスは(.*),パスワードは(.*),ユーザ名は(.*)でユーザ登録をする$/ do |email, password, name|
  visit new_user_registration_path
  fill_in("user_email", with:email)
  fill_in("user_password", with:password)
  fill_in("user_password_confirmation", with:password)
  fill_in("user_display_name", with:name)
  click_button("Sign up")
end

When /^以下のユーザが存在している:$/ do |table|
  table.rows.each do |email, display_name|
    FactoryGirl.create(:user, email:email, display_name:display_name)
  end
end

Then /^正常にユーザ登録ができること$/ do
  page.body.should =~ /#{Regexp.escape("Welcome! You have signed up successfully.")}/m
end

Then /^ユーザ登録に失敗すること$/ do
  page.body.should =~ /#{Regexp.escape("prohibited this user from being saved")}/m
end
