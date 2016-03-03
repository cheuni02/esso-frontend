Given /^i visit the main esso homepage for my locale$/ do
  @homepage = site.essohomepage
  @homepage.visit
  @cookies = @homepage.cookies_popup
  @specialcookies = @homepage.special_cookies_popup
  @social = @homepage.social
end

Then /^i should see a cookie information message on the top of my screen$/ do
  expect(@cookies.cookies_module).to be_present, "Failure: Cookies bar not showing when page loaded from fresh"
end

And /^if i click on the link to dismiss the message$/ do
  @cookies.click_dismiss
end

Then /^the cookie information banner should no longer be shown$/ do
  expect(@cookies.cookies_module).not_to be_present, "Failure: Cookies bar does not disappear after 'Dismiss' pressed"
end

Then /^i should see a popup window requiring me to confirm my acceptance of cookies$/ do
  expect(@specialcookies.special_cookies_block).to be_present, "Failure: Special Cookies bar does not show"
end

And /^when i click then checkbox and click to proceed$/ do
  @specialcookies.accept_checkbox
  @specialcookies.click_confirm
  @homepage.wait_until_page_loads
end

Then /^i should see the esso homepage has rendered in my browser window$/ do
  expect(@specialcookies.special_cookies_block).not_to be_present, "Failure: Cyprus cookie popup has not gone away after clicking confirm"
  expect(@homepage.promo_module).to be_present, "Failure: page not loaded since trying to test if promotional offer is there, is still not showing"
end

Then /^i should see links to follow on facebook and twitter$/ do
  expect(@social.social_icon).to be_present, "Failure: Twitter and Faceook social box not present"
end

And /^there should also be a module containing a sample of latest tweets about esso$/ do
  expect(@social.social_box_feed_module).to be_present, "Failure: social feed not present"
end
