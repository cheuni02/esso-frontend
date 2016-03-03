Then(/^there should be an image of Murray Walker in the background$/) do
  #puts "murray background status: #{@fys.murray_background.present?}"
  #expect(@fys.murray_background.present?).to be(true), "Failed: background image is not of Murray!"
  expect(@fys.screen_background("experience360").present?).to be(true), "Failed: background image is not of Murray!"
end

And(/^Title, Copy and buttons for sharing$/) do
  expect(@fys.screen_title("murray").present?).to be(true), "Failed: screen title not present"
  expect(@fys.screen_copy("murray").present?).to be(true), "Failed: screen copy not present"
  expect(@fys.screen_link("murray").present?).to be(true), "Failed: no link on the screen copy"
  expect(@fys.screen_fb_or_twitter("murray","https://twitter.com/UK_Esso").present?).to be(true), "Failed: no Twitter link"
  expect(@fys.screen_fb_or_twitter("murray","https://www.facebook.com/essouk").present?).to be(true), "Failed: no Facebook Like element"
end

When(/^I click on the twitter link on '\#MurrayYourTweet' screen$/) do
  @fys.click_social_link("murray","https://twitter.com/UK_Esso")
end

Then(/^new Twitter window should show related to this screen$/) do
  expect(@fys.fys_opened_window("Esso UK (@UK_Esso) on Twitter").present?).to be(true), "Failed: Tweet window not opened"
end


When(/^I click on the facebook link on '\#MurrayYourTweet' screen$/) do
  @fys.click_social_link("murray","https://www.facebook.com/essouk")
end

Then(/^new Facebook window should show related to this screen$/) do
  expect(@fys.fys_opened_window("Security Check Required").present?).to be(true), "Failed: Facebook like window not opened"
end