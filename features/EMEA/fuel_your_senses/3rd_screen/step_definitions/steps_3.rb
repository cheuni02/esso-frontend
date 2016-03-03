When(/^I click on the '< sight' link on the page$/) do
  @fys.click_sight_or_sound("sight")
end

Then(/^I should be navigated to the Sight page, which has a title and copy$/) do
  expect(@fys.screen_sub_title("sight","your-senses").present?).to be true
  expect(@fys.screen_sub_copy("sight","your-senses").present?).to be true
end

And(/^a button to play the sight video$/) do
  expect(@fys.video_button("your-senses","play-sight-video-button").present?).to be true
end

When(/^I navigate to Sight video page$/) do
  step "I click on the '< sight' link on the page"
end

And(/^click to play sight video$/) do
  @fys.click_video_button("your-senses","play-sight-video-button")
end

Then(/^Sight Video should play$/) do
  expect(@fys.video_box("sight").present?).to be true
end

When(/^I click on the 'sound >' link on the page$/) do
  @fys.click_sight_or_sound("sound")
end

Then(/^I should be navigated to the Sound page, which has a title and copy$/) do
  expect(@fys.screen_sub_title("sound","your-senses").present?).to be true
  expect(@fys.screen_sub_copy("sound","your-senses").present?).to be true
end

And(/^a button to play the sound video$/) do
  expect(@fys.video_button("your-senses","play-sound-video-button").present?).to be true
end

When(/^I navigate to Sound video page$/) do
  step "I click on the 'sound >' link on the page"
end

And(/^click to play sound video$/) do
  @fys.click_video_button("your-senses","play-sound-video-button")
end

Then(/^Sound Video should play$/) do
  expect(@fys.video_box("sound").present?).to be true
end

And(/^click 'The making of our film' video$/) do
  @fys.click_video_button("your-senses","the-making-of-sound-video-button")
end

Then(/^'The making of our film' video should play$/) do
  expect(@fys.video_box("the-making-of-sound").present?).to be true
end