require 'watir-webdriver'
require 'require_all'
require 'cucumber'
require 'require_all'
require 'securerandom'
require 'fileutils'
require 'webdriver-user-agent'
require 'json'
require 'rspec/expectations'
require 'pry'
#require 'waitutil'

require_all 'lib'

base_url = ENV['HOST']

# Staging Environment, need password for access
if base_url =~ /stage/i
  case ENV['LOCALE_BASE']
  when 'EMEA'
    base_url = "esso_stage:sooT5wioAhxuiH0o@#{ENV['HOST']}"
  when 'AMERICAS'
    base_url = "esso2014:Ohqua5Ohief8geKo@#{ENV['HOST']}"
  when "APAC"
    base_url = "esso_apac:RGTHRwert30@#{ENV['HOST']}"
  end
  ENV['ENV'] = base_url
else
  #Live, no need to sub anything
  ENV['ENV'] = ENV['HOST']
end

profile = Selenium::WebDriver::Firefox::Profile.new

#general settings
profile['geo.enabled'] = false
profile['geo.provider.ms-windows-location'] = false
profile['geo.prompt.testing'] = false
profile['geo.prompt.testing.allow'] = false
profile['browser.cache.disk.enable'] = false
profile['browser.cache.disk.capacity'] = 0
profile['network.http.pipelining'] = true
profile['network.http.pipelining.maxrequests'] = 8
profile['network.http.pipelining.aggressive'] = true
profile['nglayout.initialpaint.delay'] = 0
profile['browser.cache.use_new_backend'] = 1
profile['network.prefetch-next'] = true
profile['browser.tabs.animate'] = false
profile['browser.display.show_image_placeholders'] = false
profile['network.dns.disableIPv6'] = true
profile['content.notify.backoffcount'] = 5


# Firefox performance settings
profile['network.http.pipelining'] = true
profile['network.http.pipelining.maxrequests'] = 8
profile['network.http.pipelining.aggressive'] = true
profile['nglayout.initialpaint.delay'] = 0
profile['browser.cache.use_new_backend'] = 1
profile['network.prefetch-next'] = true
profile['browser.tabs.animate'] = false
profile['browser.display.show_image_placeholders'] = false
profile['network.dns.disableIPv6'] = true
profile['content.notify.backoffcount'] = 5
profile['gfx.direct2d.disabled'] = true
profile['layers.acceleration.disabled'] = true

Watir::always_locate = true
browser = Watir::Browser.new :firefox, :profile => profile
browser.cookies.clear
browser.window.resize_to 1240, 1024

class CustomWorld
  class << self; attr_accessor :browser end

  def site
    @site ||= (EssoBase.new(CustomWorld::browser))
  end

end

CustomWorld.browser = browser

World do
  CustomWorld.new
  #STDOUT.puts CustomWorld.browser
end

Before do
  browser.cookies.clear
#  @homepage = site.essohomepage
#  @petrolpage = site.ourpetrolpage
end


After do
  browser.cookies.clear
end


at_exit do
  browser.close
end
