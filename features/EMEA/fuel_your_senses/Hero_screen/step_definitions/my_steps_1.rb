Then(/^The '\#FuelYourSenses' hero image and title show, with copy underneath title$/) do
   @fys = site.fyspage
   expect(@fys.screen_image('assets/images/fuel-your-senses/main-animation-background.jpg').present?).to be(true), "Failed: main animation background not showing"
   expect(@fys.home_title.present?).to be(true), "Failed: home title not present"
   expect(@fys.home_copy.present?).to be(true), "Failed: home copy not present"
end

And(/^there should be button 'Scroll to start'$/) do
   expect(@fys.scroll_to_start.present?).to be(true), "Failed: Scroll to start button not showing"
end

And(/^The formula1 link should be present$/) do
   expect(@fys.formula1link.present?).to be(true), "Failed: Formula 1 link not showing"
end

