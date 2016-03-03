Then(/^there should be an image of a racer in the background$/) do
  expect(@fys.screen_background("maclaren-honda-and-esso").present?).to be(true),"Failed: Image of racer not present on page!"
end

And(/^Title, Copy and buttons for sharing should show$/) do
  expect(@fys.screen_title("maclaren-honda-and-esso").present?).to be(true), "Failed: 'maclaren-honda-and-esso' title not present!"
  expect(@fys.screen_copy("maclaren-honda-and-esso").present?).to be(true), "Failed: 'maclaren-honda-and-esso' copy not present!"
  expect(@fys.screen_fb_or_twitter("maclaren-honda-and-esso","https://twitter.com/McLarenF1").present?).to be(true), "Failed: McLaren follow button not present!"
  expect(@fys.screen_fb_or_twitter("maclaren-honda-and-esso","https://www.facebook.com/McLaren.Racing").present?).to be(true), "Failed: McLaren like button not present!"
end

When(/^I click on the twitter link on 'McLaren Honda and Esso' screen$/) do
  @fys.click_social_link("maclaren-honda-and-esso","https://twitter.com/McLarenF1")
end

Then(/^new Twitter window should show related to this particular screen$/) do
  expect(@fys.fys_opened_window("McLaren (@McLarenF1) on Twitter").present?).to be(true), "Failed: Mclaren Follow window not opened"
end

When(/^I click on the facebook link on 'McLaren Honda and Esso' screen$/) do
  @fys.click_social_link("maclaren-honda-and-esso","https://www.facebook.com/McLaren.Racing")
end

Then(/^new Facebook window should show related to this particular screen$/) do
  expect(@fys.fys_opened_window("Security Check Required").present?).to be(true), "Failed: Mclaren Follow window not opened"
end