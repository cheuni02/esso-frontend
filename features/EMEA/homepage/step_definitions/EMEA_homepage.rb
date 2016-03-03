
Then /^the nearest station matches should be shown for (.*)$/ do |location|
  expect(@stationfinder.closest_match_returned_present?).to be(true)
end

And /^the weather forecast for (.*) should show$/ do |location|
  @stationfinder.weather_results_present?
end

When /^I input a location which is impossible to match - (.*)$/ do |location|
  @stationfinder.enter_location(location)
end

Then /^There should be a message - We could not find (.*). Try adding a city, county or postcode.$/ do |location|
  expect(@stationfinder.error_message_object_exists?).to be(true)
end

When /^i located the did you know panel on the esso homepage$/ do
  expect(@homepage.dyk_module).to be_present
end

Then /^i should see there are four Esso facts displayed in the module$/ do
  if @homepage.count_dyk_submodule < 4
    raise AssertionError, "Failed: the number of facts is less than but needs to be equal to 4"
  elsif @homepage.count_dyk_submodule > 4
    raise AssertionError, "Failed: the number of facts is greater than but needs to be equal to 4"
  end
end

And(/^there should also be a link which directs user to supreme fuels page$/) do
  expect(@homepage.supreme_link).to eq('http://www.esso.co.uk/synergy-supreme-fuels')
end
