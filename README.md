FBLA101
===================

FBLA101 is an iOS app for FBLA Mobile Application Development, will be displayed for judges at FBLA SBLC.

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
 - NOTE: Only supported on devices iPhone 6, iPhone 7, and iPhone 8. (No plus versions!!)
 
 Installation
-------------
 **In order to install this application a Mac running Xcode with CocoaPods will be needed.**
 1. Make sure CocoaPods is installed on the development computer. Install Guide can be found here: https://guides.cocoapods.org/using/getting-started.html
 2. Open the archive and click on `FBLA101.xcworkspace` make sure its the white-colored blueprint icon!
 3.  Once the project is loaded, select a device from the drop-down near the top-left corner (This can be a simulator (only iPhone 6,7,8!) or a real device)
 4. Once a device is selected, press the icon that is very similar to a play button to run the project.
 5. If running on an actual device, make sure to accept any prompts so the app builds correctly. You also may need to go to Settings -> General -> Profile & Device Management -> Look under 'Developer Apps' -> Accept FBLA101<br>
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
