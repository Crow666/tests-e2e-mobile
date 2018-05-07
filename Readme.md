SCENARIO TESTING on actual device

Prerequisite:
- setup Ruby
- install Appium
- navigate to https://github.com/Crow666/tests-e2e-mobile and clone/download tests
- after starting Appium, click the "Doctor" button to check if the environment is set up properly
- download a browser apk file (i.e: "chrome.apk")


APPIUM
- start apium
- click the Android button to open Android Settings
- "App Path" => path to the browser apk file (i.e: "/Users/Crow/Desktop/apk/chrome.apk")
- check the "App Path" checkbox
- "Platform name" => Android
- "Automation Name" => Appium
- "Platform Version" => depending on the Android version on the test device (i.e: "5.0.1 Lollipop (API Level 21)")
- "Device Name" => depending on the Android version on the test device (i.e: "4d00b54cd00c226f")
  to find the device name, connect the device to computer using USB cable and execute "adb devices" command.
- check the "Device Name" checkbox
- click Advanced
- "Android SDK Path" => path to Android SDK (i.e: "/Users/Crow/Library/Android/sdk")
- check the "Android SDK Path" checkbox
- "Chromedriver Port" => 9515
- check the "Chromedriver Port" checkbox
- click "Launch" to start server

TERMINAL
- open terminal
- navigate to the root dir (/Users/Crow/dialonceMobileAutomation/tests-e2e-mobile)
- running test => bundle exec rspec /Users/Crow/dialonceMobileAutomation/tests-e2e-mobile/spec/android/scenario.rb