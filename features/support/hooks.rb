Before do |scenario|

  chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"external","chromedriver.exe")
  Selenium::WebDriver::Chrome.driver_path = chromedriver_path

  # this line of code can be parameterized using rake/cucumber.yml for different browsers
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  @browser.goto "https://www.discovery.com/"
end

After do |scenario|
  @browser.quit
end