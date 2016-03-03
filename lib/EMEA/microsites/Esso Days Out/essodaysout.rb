class EssoDaysOut < EssoBase

  def visit_essodaysout
    visit_page('/essodayout')
  end

  def visit_essodaysout_activities
    visit_page('/essodayout-activities')
  end

  def click_create
    @browser.link(:href => "/essodayout-activities").when_present.click
  end

  def activity_title
    @browser.ps(:class => "title")
  end

  def get_activity(activity)
    i = 1
    activity_list = Array.new
    activity_title.each do |a|
      activity_list[i] = a.text
      i = i+1
    end
    return activity_list.index(activity)
  end

  def essodaysout_activity(n)
    @browser.div(:id => "activity-#{n}")
  end

  def click_activity(activity)
    n = get_activity(activity)
    essodaysout_activity(n).when_present.click
  end

  def add_to_day
    @browser.span(:class => "btn btn-primary").when_present.click
  end

  def activity_popup
    @browser.div(:class => "activity-modal").p(:class => "title")
  end

  def wait_for_page
    @browser.wait_until {@browser.div(:id => "activity-42").present? == true}
  end

  def activity_in_box(box_number)
    @browser.div(:id => "slot-#{box_number}").p
  end

  def enter_into_form(firstname,lastname,email)
    @browser.input(:id => "firstName").send_keys(firstname)
    @browser.input(:id => "lastName").send_keys(lastname)
    @browser.input(:id => "email").send_keys(email)
  end

  def enter_info(firstname,lastname,email)
    enter_into_form(firstname,lastname,email)
  end

  def tick_checkbox(label)
    @browser.checkbox(:id => label).when_present.click
  end

  def click_submit
    @browser.button(:value => "Enter competition").when_present.click
  end

  def wait_thankyou_msg
    @browser.wait_until {thank_you_message.present? == true}
  end

  def thankyou_message
    @browser.div(:class => "thank-you-message").p
  end

end
