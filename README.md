FBLA101
===================

FBLA101 is an iOS app for FBLA Mobile Application Development, will be displayed to judges at FBLA SBLC.

Introduction
-------------
FBLA101 is a mobile app made to help users get educated about FBLA. The app is designed to test a member’s knowledge of FBLA, while giving the member resources to study for those tests.

Features
-------------

 - Authentication (Firebase Auth)
 - Login, Register, and Guest pages
 - Username creation
 
 - Includes 5 topics to study from
  - Flashcards
  - Website Sources
 - Includes 5 topics to test on
 
 - Statistics page containing overall testing percentage and other useful information
 - Settings page containing username, email, about, and support (bug reporting), as well as sign in/log out
 
 - Artwork (Logo, appicon, custom UI)
 - Detailed animations
 - Widget extension that displays soft skills, business etiiquette, and self esteem tips on demand
 
 Requirements
-------------
 - An iOS device/simulator running iOS 10.0 or higher
 - Xcode 8.2 or higher
 - An active Internet connection
 - NOTE: Only supported on devices iPhone 6, iPhone 6s, iPhone 7, and iPhone 8. (No plus versions!!)
 
 Installation
-------------
 **In order to install this application a Mac running Xcode with CocoaPods will be needed.**
 1. Make sure CocoaPods is installed on the development computer. Install Guide can be found here: https://guides.cocoapods.org/using/getting-started.html
 2. Close your Xcode project before you carry out the following steps.
 3. Next type `cd` and drag and drop the project directory into the terminal window.
 4. Press return
 5. Next type `pod install`
 6. Once installed, open the archive and click on `FBLA101.xcworkspace` (make sure its the one with the white blue print!)
 7.  Once the project is loaded, select a device from the drop-down near the top-left corner (This can be a simulator or a real device)
 8. Once a device is selected, press the icon that is very similar to a play button to run the project.
 9. If running on an actual device, make sure to accept any prompts so the app builds correctly. You also may need to go to Settings -> General -> Profile & Device Management -> Look under 'Developer Apps' -> Accept FBLA101<br>
**Note:** If running on a device, make sure it is unlocked before it is plugged in.


Signing Fix
-------------
After downloading the .zip file you will most likely need to change the signing settings of the app.
 1. Click 'FBLA101' at the top of the left sidebar with the blue project blueprint icon to the left of it.
 2. If done correctly, a new window will open. From the left sidebar of that window (you might have to click on it if it's hidden), look for 'FBLA101' under 'Targets' and click it.
 3. Under 'General' look for 'Signing' and fix any signing issues by selecting/creating your own team. You may have to enter your Apple ID during this step.
 
 
 Software Used
-------------

 - Xcode - IDE used to develop iOS applications
 - Swift - A fairly new programming language used within iOS applications
 - Sketch - A professional graphic design program used to make most of the UI
 - Firebase - A database used for FBLA's authentication
 - Microsoft Teams - A project base planner
 
 
  Instructions
-------------

1. Upon opening app, you get directed to a login screen, you can either log in with an existing account or create a new account or even continue as a guest if you'd like.
2. You are now in the testing screen. The application consists of three tabs, Study, Test, and Stats. You can choose where to start but I really recommend you start in the study tab if you are not very informed about these fbla topics:)
3. Now that you are in the study tab, there are 5 different FBLA topics to choose from. Choose one
4. You can now choose from 2 study resources, the websites tab usually just has the fbla website or another website related to the topic.
5. If you choose flashcards, you get presented with a flashcard game to study from.
6. Now that you have studied your topic, you can go to the test tab to take your test!
7. Choose the topic corresponding with the topic you studied for.
8. This takes you to the test, with a couple of questions on your topic. 
9. Once you finish your test you can choose to share your results on social media like Twitter, Telegram, Slack, etc.
10. Finally, there is the stats tab, this displays your overall testing percentage, total tests taken, flashcard sets studied, and websites visited.
11. To access the settings, click the little cog on the top right corner.
12. Here you could see your username/email linked to the account, our privacy policy, license, and about app.
13. Here, you can also report a bug! Just click the report bug button and you will be directed to our support email (NOTE: This feature won't work if running on simulator)
14. Finally, you can also log in/log out through this screen.
15. Wait, theres one more feature! FBLA101 has a widget extension that displays soft skills, business etiiquette, and self esteem tips on demand! If you exit the app and follow these steps you should be able to activate it! https://www.imore.com/how-use-lock-screen-widgets-iphone-and-ipad
