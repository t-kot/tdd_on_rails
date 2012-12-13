#coding: utf-8
When /^本文"(.*?)"をツイートする$/ do |tweet_body|
  visit new_tweet_path
  fill_in "tweet_body", with:tweet_body
  click_button "Create Tweet"
end

Then /^正常にツイートできること$/ do
  page.body.should =~ /#{Regexp.escape("successfully.")}/m
end

Then /^(.*)のツイート一覧に"(.*)"が含まれていること$/ do |user_name, tweet_body|
  user = User.find_by_display_name(user_name)
  visit user_tweets_path(user)
  page.body.should =~ /#{Regexp.escape(tweet_body)}/m
end
