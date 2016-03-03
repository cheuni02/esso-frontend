
When /^I click on the panel title (.*), which is panel number (.*)$/ do |panel_title, panel_no|
  if panel_title != "Car maintenance"
    @fuels.click_panel(panel_no)
  end
end

Then /^panel (.*) should expand and reveal the explanation$/ do |panel_no|
  expect(@fuels.panel_copy.present?).to be(true), "Failed: the panel explanation for panel - #{panel_no} does not show, or panel did not expand when clicked"
end

And /^I can minimise panel (.*)$/ do |panel_no|
  @fuels.click_panel(panel_no)
  expect(@fuels.panel_copy.present?).to be(false), "Failed: the panel is not minimised"
end

