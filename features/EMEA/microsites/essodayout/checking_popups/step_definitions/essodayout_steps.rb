Given /^That I'm on the EssoDayOut activities page$/ do
  @essodaysout = site.essodaysoutpage
  @essodaysout.visit_essodaysout_activities("http://#{ENV['HOST']}",ENV['ENV'],'uk')
end

When /^I click on a displayed activity - (.*)$/ do |activity|
  @essodaysout.click_activity(activity)
end

Then /^a popup should show which describes the activity - (.*)$/ do |activity|
  raise AssertionError, "failed: popup present does not display - '#{activity}'" if @essodaysout.activity_popup.text != activity
end
