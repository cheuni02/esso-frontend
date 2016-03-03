module HeaderModule
  class Menu_bar

    def initialize(browser)
      @browser = browser
    end

    def all_sub_menu_items
      @browser.divs(:class => "dropdown-menu padding__top")
    end

    def menu_sub_item(href)
      all_sub_menu_items.each do |item|
        item.uls.each do |itemul|
          if itemul.link(:href => /#{href}/i).present?
            return itemul.link(:href => /#{href}/i)
          end
        end
      end
    end

    def menu_item(href)
      @browser.link(:href => href)
    end

    def click_fuels_menu
      menu_item("/fuels").when_present(10).click
    end

    def click_fys_menu
      menu_item("/fuelyoursenses").when_present(10).click
    end

    def click_cnp_menu
      menu_item("/promotions").when_present(10).click
    end

    def click_stations_menu
      menu_item("/stations").when_present(10).click
    end

    def click_oils_menu
      menu_item("/oil").when_present(10).click
    end

    def click_fuels_home_link
      menu_sub_item("/fuels").click
    end

    def click_petrols_link
      menu_sub_item("/petrol").click
    end

    def click_diesels_link
      menu_sub_item("/diesel").click
    end

    def click_petrol_engines_link
      menu_sub_item("/petrol-engine").click
    end

    def click_diesel_engines_link
      menu_sub_item("/diesel-engine").click
    end

    def click_tips_link
      menu_sub_item("/fuel-efficiency-tips").click
    end

    def click_cnp_home_link
      menu_sub_item("/promotions").click
    end

  end

  class CookiesBar

    def initialize(browser)
      @browser = browser
    end

    def cookies_module
      @browser.aside(:class => "module-wrapper cookies dismiss_cookies")
    end

    def click_dismiss
      dismiss_button.click
    end

    def dismiss_button
      cookies_module.div.span
    end

    def statement_section
      cookies_module.p
    end

  end

  class SpecialCookiesBar

    def initialize(browser)
      @browser = browser
    end

    def special_cookies_block
      @browser.aside(:class => "cyprus").div(:class => "col-md-offset-1 module module-tight module-tint")
    end

    def accept_checkbox
      special_cookies_block.checkbox.click
    end

    def click_confirm
      special_cookies_module.span(:class => "in").click
    end

  end
end
