require 'selenium-webdriver'
require 'rubygems'
require 'appium_lib'

describe "DIAL-ONCE" do
  
  it 'scenario' do

 desired_caps = {
   caps:  {
        platformName:  'Android',
        platformVersion: '7.0',
#        platformVersion: '5.0.1',
#       deviceName:    '4d00b54cd00c226f',
        deviceName: 'ad091603586e930444',
        browserName: 'Chrome',
        appPackage: "com.android.chrome"

       
    }
}
 
@appium_driver = Appium::Driver.new(desired_caps)

@selenium_driver = @appium_driver.start_driver

Appium.promote_appium_methods Object

@selenium_driver.get("http://app.dialonce.io/?phoneNumber=+33800455455&action=outgoing-call&culture=fr")


#Mes remboursements
puts"Mes remboursements"
#sleep(1)
#driver.find_element :xpath, '//button[@value="11"]'.click
#driver.find_element :text, 'Mes remboursements'
element = find_element(:class, 'btn-add-file')
element.click
#sleep(1)
#puts"11"
element = find_element(:class, 'btn-purple')
element.click
#sleep(1)
#puts"111"
element = find_element(:class, 'btn-user')
element.click
#sleep(1)
if @driver.find_element(:class, "col-md-5").displayed? == true
sleep(1)
driver.press_keycode(4)
sleep(2)
#element = find_element(:class, 'btn-app').click
#element.click
#sleep(5)
#if @driver.find_element(:class, "btn-app").displayed? == true
#sleep(5)
element = find_element(:class, 'btn-default')
element.click
#sleep(1)
#puts"1111"
element = find_element(:class, 'btn-plus')
element.click
#sleep(1)
if @driver.find_element(:class, "col-md-5").displayed? == true
sleep(1)
driver.press_keycode(4)
sleep(2)
element = find_element(:class, 'btn-back')
element.click
#sleep(1)
element = find_element(:class, 'btn-back')
element.click
#sleep(1)
element = find_element(:class, 'btn-back')
element.click
#sleep(1)

# Mes cartes et documents
element = find_element(:class, 'btn-cards')
element.click
puts"Mes cartes et documents"
#sleep(1)
element = find_element(:class, 'btn-user-card')
element.click
#sleep(1)
element = find_element(:class, 'btn-purple')
element.click
#sleep(1)
element = find_element(:class, 'btn-user')
element.click
#sleep(1)
if @driver.find_element(:class, "col-md-5").displayed? == true
sleep(1)
driver.press_keycode(4)
sleep(1)
element = find_element(:class, 'btn-back')
element.click
#sleep(1)
element = find_element(:class, 'btn-app')
element.click
#sleep(1)
element = find_element(:class, 'btn-back')
element.click
#sleep(1)
element = find_element(:class, 'btn-back')
element.click
#sleep(1)

# Garanties
element = find_element(:class, 'btn-edit')
element.click
puts"Garanties"
#sleep(1)
element = find_element(:class, 'btn-back')
element.click
#sleep(1)

# Analyse
element = find_element(:class, 'btn-add-file')
element.click
puts"Analyse"
element = find_element(:class, 'btn-call').click
#element.click
sleep(3)
#element = find_element(:class, 'btn-call').click
#sleep (3)
element = find_element(:class, 'btn-mail-right').click
sleep (2)
#driver.press_keycode(4)
#sleep(2)
#driver.navigate().back()
driver.press_keycode(4)
sleep(4)
element = find_element(:class, 'btn-back')
element.click
#sleep(1)
element = find_element(:class, 'btn-back')
element.click
#sleep(1)


#Cotisation
element = find_element(:class, 'btn-dollar')
element.click
puts"Cotisation"
element = find_element(:class, 'btn-purple')
element.click
sleep(3)
element = find_element(:class, 'btn-man-user')
element.click
sleep(3)
if @driver.find_element(:class, "col-md-5").displayed? == true
sleep(1)
driver.press_keycode(4)
sleep(1)
element = find_element(:class, 'btn-back')
element.click
sleep(1)
element = find_element(:class, 'btn-euro')
element.click
#sleep(1)
element = find_element(:class, 'btn-man-user')
element.click
#sleep(1
if @driver.find_element(:class, "col-md-5").displayed? == true
sleep(1)
driver.press_keycode(4)
sleep(1)
element = find_element(:class, 'btn-back')
element.click
sleep(1)
element = find_element(:class, 'btn-back')
element.click
sleep(1)
#sleep(1)


#Mon espace
element = find_element(:class, 'btn-add-user')
element.click
puts"Mon espace"
sleep(3)
driver.press_keycode(4)
sleep(2)


#Settings
element = find_element(:class, 'settings')
element.click
puts"Settings"
element = find_element(:class, 'btn-on')
element.click
sleep(1)
element = find_element(:class, 'btn-call').click
#element.click
sleep(3)
element = find_element(:class, 'btn-off')
element.click
#sleep(1)
driver.press_keycode(4)
sleep(3)

driver_quit

end
end
end
end
end
end
end