class StationsHome < EssoBase
  include StationModule, SocialModule

  def station_finder
    StationModule::StationFinder.new(@browser)
  end

  def nearest_station_module
    StationModule::NearestStation.new(@browser)
  end

  def social_module
    SocialModule::Social.new(@browser)
  end

  def visit
    visit_page("/stations")
  end
end
