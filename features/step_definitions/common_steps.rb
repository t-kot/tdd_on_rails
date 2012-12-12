#coding: utf-8
When /^"(.*)"ボタンをクリックする$/ do |button|
  click_button(button)
end

When /^"(.*)"リンクをクリックする$/ do |link|
  click_link(link)
end

When /再読み込みする/ do
  visit request.request_uri
end

When /^"(.*)"に"(.*)"と入力する$/ do |field, value|
  fill_in(field, :with => value)
end

# opposite order from Engilsh one(original)
When /^"(.*)"から"(.*)"を選択$/ do |field, value|
  select(value, :from => field)
end

When /^"(.*)"をチェックする$/ do |field|
  check(field)
end

When /^"(.*)"のチェックを外す$/ do |field|
  uncheck(field)
end

When /^"(.*)"を選択する$/ do |field|
  choose(field)
end

# opposite order from Engilsh one(original)
When /^"(.*)"としてをファイル"(.*)"を添付する$/ do |field, path|
  attach_file(field, path)
end

When /^"(.*)"へアクセス$/ do |page_name|
  visit path_to(page_name)
end

When /^"(.*)"と表示されていること$/ do |content|
  page.body.should =~ /#{Regexp.escape(content)}/m
end

When /^"(.*)"と表示されていないこと$/ do |content|
  #page.body.should_not =~ /#{text}/m
  page.body.should_not =~ /#{Regexp.escape(content)}/m
end

When /^"(.*)"がチェックされていること$/ do |label|
  field_labeled(label).should be_checked
end

