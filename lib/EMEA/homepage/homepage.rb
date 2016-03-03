class EssoHome < EssoBase

  def cookies_popup
    HeaderModule::CookiesBar.new(@browser)
  end

  def special_cookies_popup
    HeaderModule::SpecialCookiesBar.new(@browser)
  end

  def station_finder
    StationModule::StationFinder.new(@browser)
  end

  def nearest_station_module
    StationModule::NearestStation.new(@browser)
  end

  def social
    SocialModule::HomepageSocial.new(@browser)
  end

  def visit
    visit_page("")
  end

  def wait_until_page_loads
    @browser.wait_until {promo_module.present?}
  end


  def promo_image
    promo_module.img
  end

  def dyk_module
    @browser.div(:class => "facts")
  end

  def dyk_submodules
    @browser.divs(:class => "fact featured-statistic ")
  end

  def count_dyk_submodule
    i=0
    dyk_submodules.each do
      i = i + 1
    end
    return i
  end

  def content
    @browser.section(:class => "content")
  end

  def promo_module
    content.div(:class => "module-wrapper", :index => 3).div(:id => "weather-promo")
  end

  def promo_link_container
    promo_module.div(:class => "module-tight-text-container").div(:class => "module-responsive-text-container")
  end

  def supreme_link
    weather_hash = Array[
        "generic",
        "sunny morning",
        "sunny afternoon",
        "sunny evening",
        "sunny night",
        "cloud morning",
        "cloud afternoon",
        "cloud evening",
        "cloud night",
        "snow morning",
        "snow afternoon",
        "snow evening",
        "snow night",
        "rainy morning",
        "rainy afternoon",
        "rainy evening",
        "rainy night"]

    weather_hash.each do |a|
      b = promo_link_container.div(:class => a).link
      if b.present?
        return b.href
      end
    end
  end

end
