module StationModule
  class StationFinder

    def initialize(browser)
      @browser = browser
    end

    def search_location
      press_enter_key
      #location_form.submit
    end

    def weather_results_present?
      weather_results.wait_until_present
    end

    def location_form_present?
      location_form.present
    end

    def wait_until_cannot_find_message_present
      cannot_find_message.wait_until_present(30)
    end

    def error_message_copy_match(copy)
      cannot_find_message.text.match(/#{copy}/) == nil
    end

    def error_message_object_exists?
      cannot_find_message.exists?
    end

    def get_error_message_width
      cannot_find_message.strong.wd.size.width
    end

    def get_searchbox_width
      searchbox.wd.size.width
    end

    def magnifying_glass_present?
      magnifying_glass.present?
    end

    def magnifying_glass_click
      magnifying_glass.click
    end

    def enter_location(location)
      sleep(1)
      clear_searchbox
      location_field.when_present.send_keys(location)
      sleep(1)
      location_field.when_present.send_keys(:enter)
      sleep(2)
    end

    def closest_match_returned_present?
      closest_match_returned.wait_until_present(10)
      #closest_match_returned.present?
    end

    def searchbox_text
      location_field.text
    end

    def clear_searchbox
      location_field.when_present.clear
    end

    def wait_for_text(location)
      wait_until_text_appears(location)
    end

    def station_module
      station_module_element
    end

    def station_name
      station_name_title
    end

    def station_tel
      station_tel_link
    end

    def station_address
      station_address_link
    end

    def station_near_me_button
      station_near_me_button_locator
    end

  private

    def station_near_me_button_locator
      @browser.a(:class => "near-me")

    end

    def station_module_element
      @browser.div(:id => "station")
    end

    def station_name_title
      @browser.h3(:class => "station-title")
    end

    def station_tel_link
      @browser.a(:class => "icon-phone tel-link")
    end

    def station_address_link
      @browser.p(:class => "paragraph-emphasised station-address")
    end

    def wait_until_text_appears(location)
      @browser.wait_until {@browser.text.include? location} #weather_results.text.include? location}
    end

    def press_enter_key
      @browser.send_keys :enter
    end

    def weather_results
      @browser.p(:class => "local-weather")
    end

    def searchbox
      @browser.div(:class => "col-md-offset-1")
    end

    def magnifying_glass
      @browser.button(:id => "search-submit")
    end

    def cannot_find_message
      @browser.div(:id => "location-error")
    end

    def location_form
      @browser.form(:id => "location-form")
    end

    def closest_match_returned
      @browser.div(:class => "celsius right-now")
    end

    def location_field
      @browser.text_field(:type => "search")
    end

    def find_station_near_me_button
      @browser.a(:class => "near-me")
    end
  end

  class NearestStation

    def initialize(browser)
      @browser = browser
    end

    def nearest_station_module
      @browser.div(:id => "station")
    end

    def station_info
      nearest_station_module.div(:class => "col-md-6")
    end

    def app_promo
      nearest_station_module.div(:class => "app-promo-small")
    end

    def buttons
      nearest_station_module.div(:class => "btn-group")
    end

    def station_name
      station_info.h3(:class => "station-title")
    end

    def station_opening_times
      station_info.p(:class => "station-opening-times")
    end

    def station_phone
      station_info.p(:class => "station-phone")
    end

    def station_address
      station_info.p(:class => "station-address")
    end

    def app_promo_image
      app_promo.div(:class => "app-promo-image")
    end

    def app_promo_copy
      app_promo.p(:index => 0)
    end

    def app_promo_button(os)
      app_promo.link(:class => "js-btn-#{os}")
    end

    def station_button(span)
      buttons.link(:class => "btn", :text => span)
      #@browser.div(:id => "station").div(:class => "btn-group").link(:class => "btn", :text => "Plan route")
    end

    def click_station_button(span)
      station_button(span)
    end

  end
end
