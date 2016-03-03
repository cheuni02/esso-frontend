Then(/^I should see the title 'Which member of the McLaren Honda formula (\d+) team are you\?'$/) do |arg|
  expect(@fys.screen_title("quiz").present?).to be(true), "Failed: Quiz section title not showing"
end

And(/^the 'Start' button$/) do
  expect(@fys.start_button.present?).to be(true), "Failed: Start Quiz button not showing"
end

When(/^I press 'start'$/) do
  @fys.click_start_button
end

Then(/^I should be taken to part (\d+) of (\d+) stages : 'Before the race begins, you're most likely to be\.\.\.'$/) do |arg1, arg2|
  if arg1 == 1 && arg2 == 4
    expect(@fys.screen_title("quiz").present?).to be(true), "Failed: user not on the first page of the quiz"
  end
end

When(/^I choose my first answer \- (.*)$/) do |answer1|
  @fys.click_quiz_answer(answer1,1)
end

And(/^I choose my second answer \- (.*)$/) do |answer2|
  @fys.click_quiz_answer(answer2,2)
end

And(/^I choose my third answer \- (.*)$/) do |answer3|
  @fys.click_quiz_answer(answer3,3)
end

And(/^I choose my fourth answer \- (.*)$/) do |answer4|
  @fys.click_quiz_answer(answer4,4)
end

Then(/^I should get the result that I am the member: (.*)$/) do |member|
  expect(@fys.quiz_member(member).text).to eq(member.upcase), "Failed: Member shown is not the expected member: #{member}"
end