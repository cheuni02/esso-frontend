class BrowserContainer

=begin

  ### Below moved to env.rb ###

  ESSO_USER = "esso_stage"
  ESSO_PASSWORD = "sooT5wioAhxuiH0o"

  ESSO_USER_AMERICAS = "esso2014"
  ESSO_PASSWORD_AMERICAS = "Ohqua5Ohief8geKo"

  ESSO_USER_APAC = "esso_apac"
  ESSO_PASSWORD_APAC = "RGTHRwert30"
=end


  def initialize(browser)
    @browser = browser
  end

  def visit_page(url='')
    if ENV['ENV'] =~ /esso\.co\.uk/
      @browser.goto("http://#{ENV['ENV']}/?utm_expid=87807347-5.4THuaT0VSo2vyyg054iuhw.0/#{url}") #hotfix for the current problem of going to esso.co.uk redirect
    else
      @browser.goto("http://#{ENV['ENV']}/#{url}")
    end
  end



=begin
  def visit_page(visit_url = "",visit_env,locale)
    case visit_env
    when 'stage'
      case locale
      when '','ca','co'
        @browser.goto(visit_url.sub("http://","http://#{ESSO_USER_AMERICAS}:#{ESSO_PASSWORD_AMERICAS}@"))
      when 'uk','be','nl','lu','it','de','no','ie','fr','cy','ng','eg'
        @browser.goto(visit_url.sub("http://","http://#{ESSO_USER}:#{ESSO_PASSWORD}@"))
      when 'nz','sg','hk'
        @browser.goto(visit_url.sub("http://","http://#{ESSO_USER_APAC}:#{ESSO_PASSWORD_APAC}@"))
      end
    when 'live'
      @browser.goto(visit_url)
    end
  end

  def visit_stations_page_stage
    @browser.goto("http://#{ESSO_USER}:#{ESSO_PASSWORD}@esso-stage-uk-xom.tribalddb.co.uk/stations")
  end

  def visit_essodaysout_page_stage
    @browser.goto("http://#{ESSO_USER}:#{ESSO_PASSWORD}@esso-stage-uk-xom.tribalddb.co.uk/essodayout")
  end

  def visit_essodaysout_activities_page_stage
    @browser.goto("http://#{ESSO_USER}:#{ESSO_PASSWORD}@esso-stage-uk-xom.tribalddb.co.uk/essodayout-activities")
  end

  def visit_petrol_stage
    @browser.goto("http://#{ESSO_USER}:#{ESSO_PASSWORD}@exxon-stage-xom.tribalddb.co.uk/petrol")
  end

  def visit_petrol_live
    @browser.goto("www.esso.co.uk/petrol")
  end
=end


end
