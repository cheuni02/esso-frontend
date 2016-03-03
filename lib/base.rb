class EssoBase < BrowserContainer
  include  FooterModule, MidsectionModule, HeaderModule

  def heromodule
    MidsectionModule::HeroModule.new(@browser)
  end

  def menu_bar
    HeaderModule::Menu_bar.new(@browser)
  end

  def midsection
    MidsectionModule::PageModule.new(@browser)
  end

  def related_content_module
    FooterModule::RelatedContent.new(@browser)
  end

  def essohomepage
    EssoHome.new(@browser)
  end

  def stationshomepage
    StationsHome.new(@browser)
  end

  def essodaysoutpage
    EssoDaysOut.new(@browser)
  end

  def fuelspage
    Fuels.new(@browser)
  end

  def petrolspage
    OurPetrols.new(@browser)
  end

  def dieselspage
    Diesels.new(@browser)
  end

  def fyspage
    FYS.new(@browser)
  end

  def oilspage
    Oils.new(@browser)
  end

  def cardsnpromopage
    Promo.new(@browser)
  end

  def current_url
    @browser.url
  end

  def refresh_page
    @browser.refresh
  end
end
