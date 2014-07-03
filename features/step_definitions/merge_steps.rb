Given /^I have the following articles:$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes
end

Then /^the comments should be carried over$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am logged in as a non\-admin user$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^"(.*?)" should have body "(.*?)"$/ do |arg1, arg2|
  expect(Article.find_by_title(arg1).body).to eq arg2
end

Then /^"(.*?)" should have title "(.*?)" or "(.*?)"$/ do |arg1, arg2, arg3|
  article = Article.find_by_title(arg1)
  expect(article.body).to eq arg2 || arg3
end
