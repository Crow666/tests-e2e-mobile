require 'rubygems'
require 'appium_lib'

describe "MAIRIE DE PARIS" do
  
  it '3975' do

 desired_caps = {
   caps:  {
        platformName:  'Android',
#        platformVersion: '5.0.1',
        platformVersion: '7.0',
#        deviceName:    '4d00b54cd00c226f',
        deviceName:    'ad091603586e930444',
#        browserName: 'Chrome',
#        appPackage: 'com.android.contacts',   # S4
        appPackage: 'com.android.phone',
        appActivity: 'DialtactsActivity',
#        appActivity: 'DsaMain'
      }
    }
  

 
 
@appium_driver = Appium::Driver.new(desired_caps)

@selenium_driver = @appium_driver.start_driver

Appium.promote_appium_methods Object
puts" "
puts" "
puts"MAIRIE DE PARIS"
puts"----------"
puts"3975"
puts"----------"
puts"start dialer"
#sleep(1)
find_element(:xpath, "//android.view.View[1]/android.widget.FrameLayout[1]/android.widget.HorizontalScrollView[1]/android.widget.LinearLayout[1]/android.app.ActionBar.Tab[1]/android.widget.LinearLayout[1]/android.widget.ImageView[1]").click
#sleep(3)
puts"call number"
driver.find_element(:xpath, "//android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[2]/android.widget.FrameLayout[1]/android.support.v4.view.ViewPager[1]/android.widget.LinearLayout[1]/android.widget.RelativeLayout[1]").send_keys("3975")
#sleep(3)


=begin
find_element(:xpath, "//android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[2]/android.widget.FrameLayout[1]/android.support.v4.view.ViewPager[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[3]").click # number 3
find_element(:xpath, "//android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[2]/android.widget.FrameLayout[1]/android.support.v4.view.ViewPager[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[9]").click
find_element(:xpath, "//android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[2]/android.widget.FrameLayout[1]/android.support.v4.view.ViewPager[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[7]").click
find_element(:xpath, "//android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[2]/android.widget.FrameLayout[1]/android.support.v4.view.ViewPager[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[5]").click
=end

find_element(:xpath, "//android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[2]/android.widget.FrameLayout[1]/android.support.v4.view.ViewPager[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.LinearLayout[1]/android.widget.RelativeLayout[2]").click # CALL button
sleep(5)

puts"verify scenario exists"
if @driver.find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.webkit.WebView[1]/android.webkit.WebView[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]").displayed? == true

driver_quit

    end 
  end
end