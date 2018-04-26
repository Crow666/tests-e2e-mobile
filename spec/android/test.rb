require 'selenium-webdriver'
require 'rubygems'
require 'appium_lib'

describe "DIAL-ONCE" do
  
  describe 'scenario' do

 desired_caps = {
   caps:  {
        platformName:  'Android',
        platformVersion: '5.0.1',
        deviceName:    '4d00b54cd00c226f',
        browserName: 'Chrome',
        appPackage: "com.android.chrome"

       
    }
}
 
describe "proba" do 
 
@appium_driver = Appium::Driver.new(desired_caps)

@selenium_driver = @appium_driver.start_driver

Appium.promote_appium_methods Object

#@selenium_driver.get("http://app.dialonce.io/?phoneNumber=%2B33800455455&action=outgoing-call&culture=fr&view=11")

#describe "proba" do
  
#  context "dva" do

#puts"Mes remboursements"
#sleep(1)
#driver.press_keycode(5)
#sleep(1)
#driver.press_keycode(3)
sleep(1)
driver.press_keycode(5)
sleep(1)
driver.find_element(:id, "com.android.dialer:id/dialpad_button").click()
sleep(1)
driver.find_element(:class, "android.widget.EditText").sendKeys(123)
#element = find_element(:class, 'btn-add-file')
#element.click
#sleep(1)

#assert(@driver.current_url.include?('11'))
#@driver.exists { text("Mes remboursements") } ? puts('OK') : puts('FALSE')

#element = find_element(:class, 'btn-back')
#element.click

sleep(3)
    end
  end
end

#if @driver.current_url("http://app.dialonce.io/?phoneNumber=%2B33800455455&action=outgoing-call&culture=fr&view=11").displayed? == true
#exists { text('Mes remboursements') } ? puts('OK') : puts('FALSE')
#texts.text.must_equal "Mes remboursements"
#if @driver.find_element(:class, "settings").displayed? == true
#wait.until { @driver.button(:class, 'btn-back').displayed?



#if @driver.current_url("http://app.dialonce.io/?phoneNumber=%2B33800455455&action=outgoing-call&culture=fr&view=11").displayed? == true
#exists { text('Mes remboursements') } ? puts('OK') : puts('FALSE')
#texts.text.must_equal "Mes remboursements"
#if @driver.find_element(:class, "settings").displayed? == true
#wait.until { @driver.button(:class, 'btn-back').displayed? }
#element = find_element(:class, 'btn-call').click