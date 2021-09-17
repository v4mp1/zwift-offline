# zoffline server for Raspberry Pi

This is a ready to play auto start zoffline server IMG for the Raspberry Pi.<br>
The server will auto update the Zwift server on every boot if there are changes on github.<p>

Following Raspberry Pi should be comaptible: 2b v1.2, 3a+, 3b, 3b+(tested) and 4b.<p>

You can play on any Zwift client (Windows, iOS, Android, macOS) over the zoffline wifi hotspot from the Pi.<br> 
``The iOS Zwift client needs a temporary jailbroken device.``

Passthrough internet on the Pi hotspot is enabled if you connect the Pi over a ethernet cable.<p>

This is a fork of https://github.com/zoffline/zwift-offline

## Server install

<details><summary>Instructions</summary>

* Download the zoffline server IMG file:<br> 
  https://drive.google.com/u/0/uc?id=10GFwvN3P0NJrt_yGdxc0yw1wl7IIQ-_T&export=download
* Extract the ZIP file to a known location.
* Write the IMG file with a program to a SD-Card which is at least 4GB in size. 
* Windows users can use Win32 Disk Imager:<br>
  https://sourceforge.net/projects/win32diskimager/<p>
* The OS will auto resize at boot and use all remaining space of the SD-Card.

</details>

## Client install

<details><summary>Windows instructions</summary>

* Install Zwift https://www.zwift.com/eu-de/download<p>
* Connect to the zoffline hotspot on the windows laptop which you will use to Zwift.<br>
``password zoffline``<p>
* Open a browser and go to http://192.168.50.10/certs
  * Download the files ``cacert.pem`` and ``import-into-win-macos.p12``<p>
* Open Command Prompt as an admin, cd to that location and run.
  * ``certutil.exe -importpfx Root import-into-win-macos.p12``
  * If you're prompted for a password, just leave it blank. There is no password.<p>
* Copy the file ``cacert.pem`` to the folder ``C:\Program Files (x86)\Zwift\data`` and overwrite the old file.<p>
* Login with one of the following zoffline user/password combination:<br> 
``rider1@zoffline.com/rider1, rider2@zoffline.com/rider2, rider3@zoffline.com/rider3.``<p>
* You are done, have fun.

</details>

<details><summary>iOS instructions</summary>

* You need a temporary jailbroken iOS device. 
  * After the replacement of the``cacert.pem`` in the Zwift folder we do not need the jailbreak anymore.
  * At the end of the procedure you can reboot your iOS device and the jailbreak is not active anymore.
  * Zwift will still work with zoffline and should be updateable without going through the procedure again (untested).<p>
* Let's jailbreak the iOS device now:
  * Check if it is compatible with the checkra1n jailbreak,<br> other jailbreaks may work but are not tested:<br> 
   https://taig9.com/apps/checkra1n-downloader/
  * If yes follow this tutorial, other tutorials may work but are not tested:<br>
    https://www.techacrobat.com/checkra1n-jailbreak-for-windows/
  * If you did everything right you should now have a new App called Checkra1n on your iOS device.
    * Install Cydia App through the Checkra1n App on the iPad.
    * Install Filza file browser App through Cydia App.<p>
* Install the Zwift App through the official App store if you did not already.<p>
* Connect to the zoffline hotspot; ``password zoffline``.<p>
* Now we do the certificate file installation for iOS and Zwift.
  * Open in Safari http://192.168.50.10/certs
    * Short touch press on ``import-into-ios.pem``. 
    * Follow this tutorial now:<br>
	https://support.securly.com/hc/en-us/articles/206978437-How-do-I-deploy-Securly-SSL-certificate-to-iOS-
  * Go back to Safari and open again http://192.168.50.10/certs
    * Long touch press on ``cacert.pem`` touch press on ``download linked file``.
  * Open Filza file browser App. 
    * Go to the path<br> 
	``/private/var/mobile/Library/Mobile Documents/com~apple~CloudDocs/Downloads``.
	* Long press on ``cacert.pem`` choose move.
	* Go to the path ``/var/containers/Bundle/Application/Zwift/Zwift.app/dataES``.
    * Press the pinboard icon on the bottom left hand side and then the left icon arrow ``paste``.
    * If you did it right you will be asked if you want to replace the file ``cacert.pem`` press ``replace``.<p>
* Check if you you are still connected to the zoffline AP, if not connect to it.<p>
* Launch the Zwift App.
  * Press on add existing user and not on create new user.
  * Login with one of the following zoffline user/password combination:<br> 
    ``rider1@zoffline.com/rider1, rider2@zoffline.com/rider2, rider3@zoffline.com/rider3.`` 
    * Official online use: Connect to your usual internet AP and open Zwift (close Zwift if it is open in background).
    * Zoffline use:        Connect to the zoffline AP and open Zwift (close Zwift if it is open in background).
    * If you are using a zoffline profile and a offical online profile you have two profiles in the Zwift App.<p>
* If you wan't to deactivate the jailbreak, reboot your device.<p>
* You are done, have fun.

</details>

<details><summary>macOS instructions</summary>

* TBA

</details>

<details><summary>Android instructions</summary>

* TBA

</details>

### [OPTIONAL]: Upload activities, activate Multiplayer profiles, etc.

<details><summary>Expand</summary>

* Connect with a SSH program like Putty or WinSCP to the Pi.<br> 
``(User: pi Password: raspberry)``.
  * Uploading activities:
    * The Pi needs to be connected to a ethernet cable with internet access.
    * Modify the necessary files (garmin, strava).
  * Enable Multiplayer profiles:
    * Create or upload a empty file called ``multiplayer.txt`` in the storage folder.
  * Obtain the official map schedule:
    * The Pi needs to be connected to a ethernet cable with internet access.
	  * Map schedule file is getting pulled once per hour of the offical server.<br>
	
* Which files you need to modify you can look here (step 3-6):<br>
  https://github.com/zoffline/zwift-offline/blob/master/README.md	

* If you modify the ``zwift-offline.db`` in the storage folder on the Pi then it is
  possible that you encounter<br> a login problem on your second login on iOS devices.
  To solve this problem you have to delete all folders<br> and files on your iOS device on the following path with the Filza file browser:<br>
``/var/mobile/Containers/Data/Application/Zwift/Documents/Zwift/cp/*``
	
</details>

### [OPTIONAL]: Documentation of how to create iOS >13 compatible certificate.

<details><summary>Expand</summary>

* TBA

</details>

## Disclaimer

Zwift is a trademark of Zwift, Inc., which is not affiliated with the maker of
this project and does not endorse this project.

All product and company names are trademarks of their respective holders. Use of
them does not imply any affiliation with or endorsement by them.
