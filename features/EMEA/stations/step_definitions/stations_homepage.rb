


Then /^The 'Find a station near me' button should show$/ do
  raise AssertionError, "Failed: Stations near me button not showing!" if @stationfinder.station_near_me_button.present? == false
end

