Given /^That I'm on the UK Esso days Out page$/ do
  @essodaysout = site.essodaysoutpage
  @essodaysout.visit_essodaysout("http://#{ENV['HOST']}",ENV['ENV'],'uk')
end

When /^I click on the 'Create your #EssoDayOut' button$/ do
  @essodaysout.click_create
  @essodaysout.wait_for_page
end

And /^i have selected activity - '(.*)'$/ do |activity|
  @essodaysout.click_activity(activity)
end

When /^clicked 'Add to my day'$/ do
  @essodaysout.add_to_day
  @essodaysout.wait_for_page
end

Then /^the activity - '(.*)' will appear on box number - (.*)$/ do |activity,box_number|
  raise AssertionError, "Activity '#{Activity}' does not appear in box number #{box_number}" if @essodaysout.activity_in_box(box_number).text != activity
end

Given /^i have already selected an activity - '(.*)'$/ do |activity|
  @essodaysout.click_activity(activity)
  step "clicked 'Add to my day'"
end

When /^I select second activity - '(.*)'$/ do |activity|
  step "i have already selected an activity - '#{activity}'"
end

Then /^the activity - (.*) will now appear on box number - (.*)$/ do |activity,box_number|
  step "the activity - #{activity} will appear on box number - #{box_number}"
end

Given /^i have already selected 2 activities - '(.*)', '(.*)'$/ do |activity1,activity2|
  step "i have already selected an activity - '#{activity1}'"
  step "i have already selected an activity - '#{activity2}'"
end

When /^I select third activity - '(.*)'$/ do |activity3|
  step "i have already selected an activity - '#{activity3}'"
end

Then /^the activity - (.*) will finally appear on box number - (.*)$/ do |activity3,box_number|
  step "the activity - #{activity3} will appear on box number - #{box_number}"
end

When /^i have selected 3 activities - (.*), (.*), (.*)$/ do |activity1,activity2,activity3|
  step "i have already selected an activity - '#{activity1}'"
  step "i have already selected an activity - '#{activity2}'"
  step "i have already selected an activity - '#{activity3}'"
end

And /^i type in these details: First Name - (.*), Last Name - (.*), Email - (.*)$/ do |firstname,lastname,email|
  @essodaysout.enter_info(firstname,lastname,email)
end

And /^ticked the two Ts&Cs checkboxes$/ do
  @essodaysout.tick_checkbox('termsChecked')
  @essodaysout.tick_checkbox('ageConfirmed')
end

And /^pressed 'Enter competition'$/ do
  @essodaysout.click_submit
  @essodaysout.wait_thankyou_msg
end

Then /^The Thank you page should show with user's name - '(.*)'$/ do |firstname|
  raise AssertionError, "Thank you message does not show 'Thank you #{firstname}'" if @essodaysout.thankyou_message.text != "Thank you #{firstname}"
end
