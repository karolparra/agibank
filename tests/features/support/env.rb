require 'capybara/cucumber'
require 'selenium-webdriver'
require 'cucumber'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://blogdoagi.com.br/'
  config.default_max_wait_time = 5
  Capybara.current_session.driver.browser.manage.window.resize_to(1920, 1080)
end
