Then(/^there should be a title 'Fuel Your Senses Virtual Reality Experience' with copy underneath$/) do
  expect(@fys.screen_title("experience360").present?).to be true
  expect(@fys.screen_copy("experience360").present?).to be true
end

And(/^there should be a button 'Get Started' which links to the 360 degree video$/) do
  expect(@fys.screen_button("experience360","https://www.youtube.com/watch?v=n4pbSI3kOsg").present?).to be true
end

When(/^I click on the button 'get started'$/) do
  @fys.click_screen_button("experience360","https://www.youtube.com/watch?v=n4pbSI3kOsg")
end

Then(/^The Youtube video for FYS should load in a new window$/) do
  expect(@fys.url_opened_window("Esso #FuelYourSenses VR experience - YouTube")).to eq("https://www.youtube.com/watch?v=n4pbSI3kOsg"), "Failed: Fuel Your senses youtube page not navigated to"
end