require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://google.com"

element = driver.find_element :name => "q"
element.send_keys "Fem"
element.submit

puts "Page title is #{driver.title}"

wait = Selenium::WebDriver::Wait.new(:timeout => 50)
wait.until { driver.title.downcase.start_with? "femi" }

puts "Page title is #{driver.title}"
driver.quit
