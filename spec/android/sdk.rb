require 'rubygems'
require 'appium_lib'

describe "DIAL-ONCE" do
  
  it 'sdk' do

 desired_caps = {
   caps:  {
        platformName:  'Android',
#        platformVersion: '7.0',
        platformVersion: '5.0.1',
#        deviceName:    'ad091603586e930444',
#        deviceName: 'emulator-5554',
        deviceName:    '4d00b54cd00c226f',
        browser: 'Browser',
        app: '/Users/Crow/Downloads/sample-debug.apk',
#        appPackage: 'com.android.dialer',
       
    }
}
 
@appium_driver = Appium::Driver.new(desired_caps)

@selenium_driver = @appium_driver.start_driver

Appium.promote_appium_methods Object

find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[1]/android.widget.Switch[1]").click # PRODUCTION
sleep 1
puts"Production"
find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[2]/android.widget.LinearLayout[1]/android.widget.Button[1]").click # UNLOCK PHONE NUMBERS
sleep 1
puts"Unlock phone numbers"
find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[1]/android.widget.Switch[2]").click # SDK INIT
sleep 1
puts"SDK Init"
find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[1]/android.widget.Switch[1]").click # INTERCEPTION
sleep 1
puts"Interception"
find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[2]/android.widget.LinearLayout[1]/android.widget.Button[2]").click # RESET
sleep 1
puts"Reset"
find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[2]/android.widget.LinearLayout[2]/android.widget.Button[2]").click # PREVENT SLEEP
sleep 1
puts"Prevent sleep"
find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[2]/android.widget.LinearLayout[2]/android.widget.Button[1]").click # FORCE SYNC
sleep 1
puts"Force sync"
find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.widget.FrameLayout[2]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[2]/android.widget.Button[1]").click # INTERSTITIAL
sleep 3
find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.webkit.WebView[1]/android.webkit.WebView[1]/android.view.View[2]/android.view.View[1]").click
puts"Interstitial"
sleep 2
find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.support.v7.widget.LinearLayoutCompat[1]/android.widget.ImageView[1]").click # SETTINGS
puts"Settings"
sleep 1
find_element(:xpath, "//android.widget.ListView[1]/android.widget.LinearLayout[1]").click # ADVANCED SETTINGS
puts"Advanced settings"
sleep 1

driver.press_keycode(4)
sleep 1

driver_quit

end
end
#end