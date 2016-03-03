When /^i examine the main top level module on the HOSDW \('How our Synergy Diesel works\?'\) page$/ do
end

Then /^i should see a module containing a header lead and header of the HOSDW page$/ do
  raise AssertionError, "Failed: Hero header and/or subheader does not exist!" if @fuels.hero_module_header.present? == false || @fuels.hero_module_subheader.present? == false
end

Then /^i should see a module containing a header of the HOSDW page$/ do
  raise AssertionError, "Failed: Hero header and/or subheader does not exist!" if @fuels.hero_module_subheader.present? == false
end

And /^there should also be copy inside the hero module on the HOSDW page$/ do
  raise AssertionError, "Failed: Hero module copy is not showing!" if @fuels.hero_copy.present? == false
end


When /^i examine the second module on the HOSDW page in my browser - 'Fuel injectors'$/ do
end

Then /^i should see some interesting copy displayed in the module of the HOSDW page - 'Esso Synergy Diesel helps..'$/ do
  raise AssertionError, "Failed: second module copy not present!" if @diesels.diesel_second_module_copy.present? == false
end

And /^there should also be an interactive youtube video on the HOSDW page - 'Fuel injectors'$/ do
  raise AssertionError, "Failed: second module video not present!" if @diesels.second_module_video.present? == false
end


When /^i examine the third module on the HOSDW page in my browser - 'Combustion chamber'$/ do
end

Then /^i should see some interesting copy displayed in the module of the HOSDW page - 'It’s here in the combustion chamber..'$/ do
  raise AssertionError, "Failed: third module copy not present!" if @diesels.diesel_third_module_copy.present? == false
end

And /^there should also be an interactive youtube video on the HOSDW page - 'Combustion chamber'$/ do
  raise AssertionError, "Failed: third module video not present!" if @diesels.third_module_video.present? == false
end


When /^i examine the fourth module on the HOSDW page in my browser - 'A closer look'$/ do
end

Then /^i should see some interesting copy displayed in the module - 'Esso Synergy Diesel is designed ..'$/ do
  raise AssertionError, "Failed: fourth module copy not present!" if @diesels.diesel_fourth_module_copy.present? == false
end

And /^there should also be an interactive youtube video on the HOSDW page - 'A closer look'$/ do
  raise AssertionError, "Failed: fourth module video not present!" if @diesels.fourth_module_video.present? == false
end

When /^i examine the fifth module on the HOSDW page in my browser - 'Exhaust valves'$/ do
end

Then /^i should see some interesting copy displayed in the module of the HOSDW page - 'The exhaust valves..'$/ do
  raise AssertionError, "Failed: fifth module copy not present!" if @diesels.diesel_fifth_module_copy.present? == false
end

And /^there should also be an interactive youtube video on the HOSDW page - 'Exhaust valves'$/ do
  raise AssertionError, "Failed: fifth module video not present!" if @diesels.fifth_module_video.present? == false
end
