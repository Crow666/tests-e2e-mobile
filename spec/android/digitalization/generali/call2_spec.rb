require 'rubygems'
require 'appium_lib'

describe "GENERALI" do
  
  it '0969365365' do

 desired_caps = {
   caps:  {
        platformName:  'Android',
        platformVersion: '5.0.1',
        deviceName:    '4d00b54cd00c226f',
#        browserName: 'Chrome',
        appPackage: 'com.android.contacts',
#        appPackage: 'google-dialer.apk',
        appActivity: 'DialtactsActivity',
#        appActivity: 'DsaMain'
      }
    }
  

 
 
@appium_driver = Appium::Driver.new(desired_caps)

@selenium_driver = @appium_driver.start_driver

Appium.promote_appium_methods Object
puts" "
puts" "
puts"GENERALI"
puts"----------"
puts"0969365365"
puts"----------"
puts"start dialer"
#sleep(1)
find_element(:xpath, "//android.view.View[1]/android.widget.FrameLayout[1]/android.widget.HorizontalScrollView[1]/android.widget.LinearLayout[1]/android.app.ActionBar.Tab[1]/android.widget.LinearLayout[1]/android.widget.ImageView[1]").click
#sleep(3)
puts"call number"
driver.find_element(:xpath, "//android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[2]/android.widget.FrameLayout[1]/android.support.v4.view.ViewPager[1]/android.widget.LinearLayout[1]/android.widget.RelativeLayout[1]").send_keys("0969365365")
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