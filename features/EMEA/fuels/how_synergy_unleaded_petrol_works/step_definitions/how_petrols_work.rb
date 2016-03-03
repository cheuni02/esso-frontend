# @EMEA
# Scenario: 'How our Synergy Diesel works?' Hero module
When /^i examine the main top level module on the HOSUPW \('How our Synergy Unleaded Petrol works\?'\) page$/ do
end

Then /^i should see a module containing a header of the HOSUPW page$/ do
  raise AssertionError, "Failed: Hero header and/or subheader does not exist!" if @fuels.hero_module_subheader.present? == false
end

Then /^i should see a module containing a header lead and header of the HOSUPW page$/ do
  raise AssertionError, "Failed: Hero header and/or subheader does not exist!" if @fuels.hero_module_header.present? == false || @fuels.hero_module_subheader.present? == false
end

And /^there should also be copy inside the hero module on the HOSUPW page$/ do
  raise AssertionError, "Failed: Hero module copy is not showing!" if @fuels.hero_copy.present? == false
end

# @esso-uk @esso-be @esso-ie @esso-no @esso-nl @esso-lu @esso-cy
# Scenario: Fuel injectors Video Module
When /^i examine the second module on the HOSUPW page in my browser - 'Fuel injectors'$/ do
end

Then /^i should see some interesting copy displayed in the module of the HOSUPW page - 'Esso Synergy Unleaded Petrol helps..'$/ do
  raise AssertionError, "Failed: second module copy not present!" if @petrols.petrol_second_module_copy.present? == false
end

And /^there should also be an interactive youtube video on the HOSUPW page - 'Fuel injectors'$/ do
  raise AssertionError, "Failed: second module video not present!" if @petrols.second_module_video.present? == false
end

# @esso-uk @esso-be @esso-ie @esso-no @esso-nl @esso-lu @esso-cy
# Scenario: Intake Valves Video Module
When /^i examine the third module on the HOSUPW page in my browser - 'Intake valves'$/ do
end

Then /^i should see some interesting copy displayed in the module of the HOSUPW page - 'Esso Synergy Unleaded petrol is engineered..'$/ do
  raise AssertionError, "Failed: third module copy not present!" if @petrols.petrol_third_module_copy.present? == false
end

And /^there should also be an interactive youtube video on the HOSUPW page - 'Intake valves'$/ do
  raise AssertionError, "Failed: third module video not present!" if @petrols.third_module_video.present? == false
end

# @esso-uk @esso-be @esso-ie @esso-no @esso-nl @esso-lu @esso-cy
# Scenario: Combustion chamber Video Module
When /^i examine the third module on the HOSUPW page in my browser - 'Combustion chamber'$/ do
end

Then /^i should see some interesting copy displayed in the module of the HOSUPW page - 'It’s here in the combustion chamber..'$/ do
  raise AssertionError, "Failed: third module copy not present!" if @petrols.petrol_third_module_copy.present? == false
end

And /^there should also be an interactive youtube video on the HOSUPW page - 'Combustion chamber'$/ do
  raise AssertionError, "Failed: third module video not present!" if @petrols.third_module_video.present? == false
end

# @esso-uk @esso-be @esso-ie @esso-no @esso-nl @esso-lu @esso-cy
# Scenario: 'A closer look' Video Module
When /^i examine the fourth module on the HOSUPW page in my browser - 'A closer look'$/ do
end

Then /^i should see some interesting copy displayed in the module - 'Esso Synergy Unleaded Petrol is designed ..'$/ do
  raise AssertionError, "Failed: fourth module copy not present!" if @petrols.petrol_fourth_module_copy.present? == false
end

And /^there should also be an interactive youtube video on the HOSUPW page - 'A closer look'$/ do
  raise AssertionError, "Failed: fourth module video not present!" if @petrols.fourth_module_video.present? == false
end

# @esso-uk @esso-be @esso-ie @esso-no @esso-nl @esso-lu @esso-cy
# Scenario: Exhaust valves Video Module
When /^i examine the fifth module on the HOSUPW page in my browser - 'Exhaust valves'$/ do
end

Then /^i should see some interesting copy displayed in the module of the HOSUPW page - 'The exhaust valves..'$/ do
  raise AssertionError, "Failed: fifth module copy not present!" if @petrols.petrol_fifth_module_copy.present? == false
end

And /^there should also be an interactive youtube video on the HOSUPW page - 'Exhaust valves'$/ do
  raise AssertionError, "Failed: fifth module video not present!" if @petrols.fifth_module_video.present? == false
end
