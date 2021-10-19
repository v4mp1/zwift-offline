# zoffline server for Raspberry Pi

This is a ready to play auto start Zwift zoffline server IMG for the Raspberry Pi.<br>
The server auto update the Zwift server files once per hour if there is a new Zwift version.<br>
On major Zwift changes updates will be pulled over github every Raspberry Pi reboot.<p>

Following Raspberry Pi are tested and compatible: 3b+ and 4b.<p>

You can play on any Zwift client (Windows, Android, iOS, macOS and tvOS) over the zoffline wifi hotspot from the Pi.<br> 
``A iOS or tvOS Zwift client device needs to be temporary jailbroken.``

Passthrough internet on the Pi hotspot is enabled if you connect the Pi over a ethernet cable.<br>
For Zwift server auto updates you also need to connect the Pi to a ethernet cable.<p>
	
This is a fork of https://github.com/zoffline/zwift-offline

## Server install

<details><summary>Instructions</summary>

* Download the zoffline server IMG file:<br> 
  https://drive.google.com/u/0/uc?id=1RwVOGN_Vbv_0MFQSLMsR4El0fEpKThV7&export=download<p>
* Extract the ZIP file to a known location.
* Write the IMG file with a program to a SD-Card which is at least 4GB in size. 
* Windows users can use Win32 Disk Imager:<br>
  https://sourceforge.net/projects/win32diskimager/<p>
* The OS will auto resize at boot and use all remaining space of the SD-Card.<p>
* First boot can take up to 5 Minutes till the Zwift server is booted.
	
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
  * Log in with one of the following zoffline user/password combination:<br> 
    ``rider1@zoffline.com/rider1, rider2@zoffline.com/rider2, rider3@zoffline.com/rider3.`` 
    * Official online use: Connect to your usual internet AP and open Zwift (close Zwift if it is open in background).
    * Zoffline use:        Connect to the zoffline AP and open Zwift (close Zwift if it is open in background).
    * If you are using a zoffline profile and a offical online profile you have two profiles in the Zwift App.<p>
* If you wan't to deactivate the jailbreak, reboot your device.<p>
* You are done, have fun.

</details>
	
### [OPTIONAL]: Enable Garmin/Strava upload activity feature

<details><summary>Expand</summary>

* In order to be able to upload activities at the end of a ride to Garmin/Strava you have to do:
  * Connect to the zoffline AP and browse to https://192.168.50.10/login
    * Login with the user you wan't to be able to upload activities (for instance rider1@zoffline.com)
      * Garmin: Click on Garmin, enter your garmin connect username and password.
      * Strava: Click on Strava, enter your strava username/password and click on authorize.<p>
        
* You are done with the Garmin/Strava auth process, you can close the tabs or logout. 
	
</details>
	
## Disclaimer

Zwift is a trademark of Zwift, Inc., which is not affiliated with the maker of
this project and does not endorse this project.

All product and company names are trademarks of their respective holders. Use of
them does not imply any affiliation with or endorsement by them.
