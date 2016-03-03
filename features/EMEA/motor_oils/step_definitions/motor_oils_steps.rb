And(/^a link to find recommended oil for your car\.$/) do
  link = "http://www.mobil.co.uk/UK-English-LCW/carengineoils_which-oil.aspx"
  expect(@hero.hero_copy_link(link).present?).to be(true), "Failed: There's no link in the hero for finding the recommended oil for your car."
end