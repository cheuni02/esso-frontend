Given /^i am on the Locale specific Esso Homepage$/ do
  @homepage = site.essohomepage
  @stations = site.stationshomepage
  @stationfinder = @homepage.station_finder
  @neareststation = @homepage.nearest_station_module
  @page = site.midsection

  @homepage.visit
end

Given(/^I am currently on FYS screen \- (\d+) \- ([^\"]*)$/) do | arg, screen_name |

  @fys = site.fyspage
  @fys.visit
  @menu = @fys.menu_bar
  @menu.click_fys_menu
  @cookie = @fys.cookiespopup
  @cookie.click_dismiss

  sleep(3)

  case arg
    when "2"
      @fys.click_navigation_dot(1)
    when "3"
      @fys.click_navigation_dot(2)
    when "4"
      @fys.click_navigation_dot(3)
    when "5"
      @fys.click_navigation_dot(4)
    when "6"
      @fys.click_navigation_dot(5)
  end
end

Given(/^i visit the '([^\"]*)' page on the esso website via the top level navigation$/) do |page|
  @hero = site.heromodule
  @page = site.midsection
  @menu = site.menu_bar
  @oil = site.oilspage
  @related = site.related_content_module
  @stations = site.stationshomepage
  @stationfinder = @stations.station_finder
  @neareststation = @stations.nearest_station_module
  @social = @stations.social_module


  @oil.visit

  case page
    when "Motor Oils"
      @menu.click_oils_menu
    when "Our Stations"
      @menu.click_stations_menu
  end

end


Given(/^i visit the '([^\"]*)' page on the esso website via the top level navigation via '([^\"]*)'$/) do |page, nav|

  @fuels = site.fuelspage
  @hero = site.heromodule
  @page = site.midsection
  @fuels.visit
  @menu = @fuels.menu_bar

  @related = @fuels.related_content_module
  @petrols = site.petrolspage
  @diesels = site.dieselspage
  @promo = site.cardsnpromopage
  @stationfinder = @promo.station_finder



  case nav
    when "fuels"
      @menu.click_fuels_menu
      case page
        when "Tips"
          @menu.click_tips_link
        when "fuels home"
          @menu.click_fuels_home_link
        when "How our Synergy Diesel works?"
          @menu.click_diesel_engines_link
        when "How our Synergy Petrol works?"
          @menu.click_petrol_engines_link
        when "Synergy Petrols fuels"
          @menu.click_petrols_link
        when "Synergy Diesels fuels"
          @menu.click_diesels_link
      end
    when "Cards & Promotions"
      @menu.click_cnp_menu
      case page
        when "overview"
          @menu.click_cnp_home_link
      end
  end

end

When /^I enter a location that should have an Esso Station nearby \- (.*)$/ do |location|
  @stationfinder.enter_location(location)
end


When /^i examine the main top level module on the page$/ do
end


Then(/^i should see a module containing a header$/) do
  expect(@hero.hero_header).to be_present
end

Then /^i should see a module containing a header and sub header$/ do
  expect(@hero.hero_header).to be_present
  expect(@hero.hero_subheader).to be_present
end

And /^there should also be copy inside the hero module on the page$/ do
  expect(@hero.hero_copy).to be_present
end

When /^i examine module \#(\d+) on the fuels page in my browser$/ do |n|
end

Then /^i should see some interesting copy displayed in module \#(\d+)$/ do |n|
  expect(@page.module_copy(n.to_i)).to be_present
end

And /^there should also be an interactive youtube video in module \#(\d+)$/ do |n|
  expect(@page.module_video(n.to_i)).to be_present
end


And /^there should also be a link contained within module \#(\d+) as a button$/ do |n|
  expect(@page.module_button(n.to_i)).to be_present
end

Then(/^i should see content along with an image displayed on module \#(\d+)$/) do |n|
  expect(@page.module_image(n.to_i)).to be_present
  expect(@page.module_copy(n.to_i)).to be_present
end

When /^i check each of the links in the footer area of the fuels page$/ do
end

Then /^there should be 4 modules and i should see that each item has a link and associated image with text$/ do
  #raise AssertionError, "Failed: number of CTAs dont equal 4" if @related.count_cta_links != 4
  expect(@related.count_cta_links).to eq(4), "Failed: number of CTAs dont equal 4"
  @related.cta_module_links.each do |link|
    #raise AssertionError, "Failed: one cta module has no associated image" if link.img.present? == false
    expect(link.img).to be_present
  end
end


Then /^there should be copies with titles\: 'A deeper clean' and 'Better performance'$/ do

  expect(@related.count_cta_links).to eq(4), "Failed: number of CTAs dont equal 4"

  for i in 0..2
    expect(@related.cta_module_title(i)).to be_present
    expect(@related.cta_module_info(i)).to be_present
  end

end

And /^a link to the video 'How our Petrol works' with a small thumbnail on this module of the SP page$/ do
  expect(@related.footer_video_link).to be_present
end

Then /^there should be a copy to explain the Synergy Diesel gives 'A deeper clean'$/ do
  expect(@related.cta_module_title(0)).to be_present
end

And /^a link to the video 'How our diesel works' with a small thumbnail$/ do
  #raise AssertionError, "Failed: link not present on the 2nd module 'How our diesel works'!" if @related.footer_video_link.present? == false
  expect(@related.footer_video_link).to be_present
end

Then(/^I should get the nearest station name displayed, with its address and contact details$/) do
  expect(@neareststation.station_name).to be_present
  expect(@neareststation.station_opening_times).to be_present
  expect(@neareststation.station_phone).to be_present
  expect(@neareststation.station_address).to be_present
end

And(/^(\d+) buttons 'Plan Route', 'Station Details', and 'Stations nearby'$/) do |arg|
  button_names = Array["Plan route", "Station details", "Stations nearby"]

  button_names.each do |names|
    expect(@neareststation.station_button(names)).to be_present, "Failed: button #{names} not present on the nearest station module!"
  end
end

And(/^a promotion for Esso Fuel Finder app, equiped with download buttons for iOS and Android, and an image of it$/) do
  expect(@neareststation.app_promo_image).to be_present
  expect(@neareststation.app_promo_copy).to be_present
  expect(@neareststation.app_promo_button("ios")).to be_present
  expect(@neareststation.app_promo_button("android")).to be_present
end

Then(/^i should see a module title element '([^\"]*)' for module \#(\d+)$/) do |title, n|
  expect(@page.module_title(n.to_i,title).present?).to be(true), "Failed: module title '#{title}' is not showing!"
end

And(/^that link on module \#(\d+) takes user to '([^\"]*)' page$/) do |n, href|
  expect(@page.module_button_name(n.to_i,href).present?).to be(true), "Failed: module button does not take user to '#{href}'!"
end

When /^I click on (.*) link$/ do |social|
  if social == 'Twitter'
    @social.twitter_click
  elsif social == 'Facebook'
    @social.facebook_click
  end
end

Then /^The (.*) link's page should open$/ do |social|
  if social == 'Twitter'
    raise AssertionError, "Twitter share window not opened" if @social.twitter_window.exists? == false
  elsif social == 'Facebook'
    raise AssertionError, "Twitter share window not opened" if @social.facebook_window.exists? == false
  end
end

And(/^I close the (Esso Twitter|McLaren Twitter|Esso Facebook|FYS YouTube) window$/) do |choice|
  case choice
    when "Esso Twitter"
      @fys.fys_opened_window("Esso UK (@UK_Esso) on Twitter").close
    when "McLaren Twitter"
      @fys.fys_opened_window("McLaren (@McLarenF1) on Twitter").close
    when "Facebook"
      @fys.fys_opened_window("Security Check Required").close
    when "FYS YouTube"
      @fys.fys_opened_window("Esso #FuelYourSenses VR experience - YouTube").close
  end
end
