class Promo < EssoBase
  include StationModule

  def station_finder
    StationModule::StationFinder.new(@browser)
  end

  def visit
    visit_page('')
  end
end