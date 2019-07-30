Différents_modèles_de_lecteurs_de_cartes_bancaires.jpg devices used for online banking in some countries.]] TWO-FACTOR AUTHENTICATION (2FA) is a way to add additional security to your account. The first "factor" is your usual password that is standard for any account. The second "factor" is a verification code retrieved from an app on a mobile device or computer. 2FA is conceptually similar to a security token device that banks in some countries require for online banking. Other names for 2FA systems include _OTP_ (_one-time password_) and _TOTP_ (_Time-based One-time Password algorithm_).

This guide explains how to enable and disable 2FA on Wikipedia for your account.


Securing your account

Basic_information_in_Wikipedia_preferences.png with button to enable 2FA]] It is EXTREMELY IMPORTANT for administrators and editors with advanced permissions to keep their account secure. A number of Wikipedia administrators (including the co-founder, ) have had their accounts compromised, which were then used to vandalise the encyclopedia. As well as causing widespread disruption, the affected administrators' accounts were locked until it was beyond doubt they had regained control.

Any editor can improve their account security by using 2FA. This practice is recommended for editors with advanced permissions, highly recommended for administrators, and required for interface administrators, among others.

Before enabling 2FA, please ensure that you have a strong password that is exclusively used for Wikipedia. Consider using a password manager to generate strong, unique passwords for each of your online accounts.


Accessing 2FA

On the English Wikipedia, the following groups automatically have access to 2FA:

-   Administrators
-   Bureaucrats
-   Checkusers
-   Edit filter managers
-   Interface administrators
-   Oversighters
-   Template editors

If you are not in one of these groups, you need to submit a request at :m:Steward requests/Global permissions#Requests for 2 Factor Auth tester permissions to obtain access to 2FA (see request examples). Most users need to request access before they can use 2FA.

Users with advanced rights on other projects, including test wikis hosted by Wikimedia, can also enable 2FA from those projects.

Checking whether 2FA is enabled

To determine whether your account has 2FA enabled, go to Special:Preferences. Under "Basic information", check the entry for "Two-factor authentication", which should be between "Global account" and "Global preferences":

-   If the entry says "TOTP (one-time token)", 2FA is currently enabled on your account.
-   If the entry says "None enabled", 2FA is currently disabled on your account.
-   If there is no entry for "Two-factor authentication", your account currently doesn't have access to 2FA, and you'll need to request access at :m:Steward requests/Global permissions#Requests for 2 Factor Auth tester permissions before you can enable 2FA.


Enabling 2FA on smartphones and tablet computers

Scanning_QR_codes_on_business_cards.jpg with a smartphone's camera]] If you have a smartphone or tablet computer with Android or iOS, a mobile app is the most secure way to use 2FA. If you don't have a mobile device or if you want to use a Windows tablet, see "".

1.  Download a 2FA app onto your mobile device. Recommended options include:
    -   FREEOTP (Android, iOS): free and open-source
        -   Android: Download from Google Play[1] or F-Droid[2]
        -   iOS: Download from the App Store[3]
    -   ANDOTP[4] (Android): free and open-source
        -   Android: Download from Google Play[5] or F-Droid[6]
    -   AUTHENTICATOR[7] (iOS): free and open-source
        -   iOS: Download from the App Store[8]
2.  Go to the [ 2FA enrollment page].
3.  The recommended authentication method is to scan a QR code in the app. Your browser will display a box with a pattern, which you have to point your device's camera toward, as if you're taking a picture of it. (Your device might ask you for permission to use the camera first.)
    -   If you can't scan the QR code, you can enter the secret key from the screen into the app, which gives you the same result.
4.  Go back to the 2FA enrollment page. Write down the scratch codes and keep them in a secure location.
5.  Type the 6-digit verification code from WinAuth into the 2FA enrollment page under "Step 4".

That's it, you're all set up. NOW, READ "".


Enabling 2FA on desktop and laptop computers

You can use apps like WinAuth, Authenticator, and KeeWeb to handle 2FA tokens on many computers. This is the recommended way to use 2FA if you don't have a smartphone or tablet computer. Certain laptops (like Chromebooks) may need to use the "tablet" section above.

If you currently use a password manager, check whether it supports 2FA. (Your password manager may also refer to 2FA as _OTP_ or _TOTP_.) Using your current password manager for 2FA is easier than setting up a new 2FA app.

_Note:_ If you normally edit with your desktop computer, using a desktop 2FA app is slightly less secure than using a mobile 2FA app, as someone with access to both your computer and your password would still be able to log in to your account.

WinAuth (Windows)

WinAuth_3_screenshot.png WinAuth[9] is the recommended 2FA app for Windows users. It is free and open-source.

1.  Download WinAuth[10] onto your Windows PC.
2.  Go to the [ 2FA enrollment page].
3.  Click the "Add" button at the bottom-left of Authenticator. Select "Authenticator".
4.  Type "Wikipedia" and your account name (e.g. "Wikipedia - Example") into the "Name" field.
5.  Copy the "Two-factor authentication secret key" from the setup page and paste it into the "Secret Code" field.
6.  Leave the next option set to "Time-based".
7.  Click "Verify authenticator" and then click "OK".
8.  Optionally set a password for WinAuth. Click "OK".
9.  Go back to the 2FA enrollment page. Write down the scratch codes and keep them in a secure location.
10. Type the 6-digit verification code from WinAuth into the 2FA enrollment page under "Step 4". (Click the refresh button in WinAuth to generate another code.)

That's it, you're all set up. NOW, READ "".

Authenticator (Linux)

Authenticator_(Linux).png Authenticator[11] is the recommended 2FA app for Linux users. It is free and open-source.

1.  Download Authenticator[12] onto your Linux computer. (Authenticator requires Flatpak, which is available on all Linux distributions, including Ubuntu.[13])
2.  Go to the [ 2FA enrollment page].
3.  Click the plus sign (+) button at the top-left of Authenticator.
4.  Add the secret 2FA key to Authenticator using either one of these methods:
    -   Use Authenticator to take a screenshot of the QR code:
        1.  Click the QR code button at the top-right of Authenticator.
        2.  Position your pointer before the top-left corner of the QR code of the 2FA setup page.
        3.  Hold down the mouse button, move the pointer to after the bottom-right of the QR code, and then release the mouse button. The form in Authenticator should be automatically filled in.
    -   Manually enter the secret key:
        1.  Type "Wikipedia" into the "Provider" field, and your account name into the "Account Name" field.
        2.  Copy the "Two-factor authentication secret key" from the setup page and paste it into the "2FA Token" field.
5.  Click "Add" at the top-right of Authenticator.
6.  Go back to the 2FA enrollment page. Write down the scratch codes and keep them in a secure location.
7.  Type the 6-digit verification code from Authenticator into the 2FA enrollment page under "Step 4".
8.  Click "Submit".

That's it, you're all set up. NOW, READ "".

KeeWeb (Windows, macOS, Linux, online)

KeeWeb.png KeeWeb[14] is a free and open-source password manager that also handles 2FA. The app can be downloaded to your computer or used online without installation. KeeWeb refers to 2FA as _one-time passwords_ (_OTP_).

1.  Download KeeWeb[15] onto your computer, or open KeeWeb's online web app.[16]
2.  Go to the [ 2FA enrollment page].
3.  In KeeWeb, click "New" (the plus icon).
4.  Add a new entry: Click the plus icon ("Add New") at the top. Then, click "Entry".
5.  Give the entry a title (e.g. "Wikipedia").
6.  In the right-side pane, click "more...". Then, click "One-time passwords" and click "Enter code manually".
7.  Copy and paste the key from the 2FA enrollment page into the "otp" field in KeeWeb. Press on your keyboard.
8.  Go back to the 2FA enrollment page. Write down the scratch codes and keep them in a secure location.
9.  In KeeWeb, click on "otp" to copy the 6-digit verification code. Paste the code into the 2FA enrollment page under "Step 4".
10. Back up your 2FA settings: Click on the gear icon ("Settings") at the bottom-right of the KeeWeb window. Optionally set a password, and then click "Save to...". Click "File" to save your 2FA settings onto your computer, or choose one of the other options to sync with Dropbox, Google Drive, OneDrive, or WebDAV.

That's it, you're all set up. NOW, READ "".


Scratch codes

Scratch_codes_in_Wikipedia_2FA_enrollment.png When you set up 2FA, you'll be given a number of scratch codes. You can use one of these if you lose access to your 2FA app (e.g. if your phone or computer gets broken, stolen, or sold). _You only see these codes while setting up 2FA (and never again)_, so copy them from your browser and save them offline in a safe place (e.g. on a memory stick or paper printout). IF YOU DON'T KEEP THESE CODES AND ENCOUNTER A PROBLEM WITH YOUR 2FA DEVICE, YOU WILL BE LOCKED OUT OF YOUR ACCOUNT.

-   Each scratch code can only be used one time, and it takes two of them to turn off 2FA (the first to log in without 2FA, and the second to shut off 2FA after logging in).
-   Don't store these on your smartphone. If it gets lost, you won't be able to use your phone, and you'll lose the codes!
-   You still need to follow good security practices. Don't use your name, date of birth, or anything that can be guessed in a dictionary attack as a password. Don't write your password down in a place anyone else can see it, and consider whether or not it's a good idea to log in to your Wikipedia account on public terminals at schools, libraries, and airports.

If for some reason you need to use one or more scratch codes or feel that they have been compromised, you should generate a new set at your earliest convenience (especially if you are down to three or less remaining). To generate a new batch of scratch codes dis-enroll then re-enroll in two-factor authentication. This will void all of your old scratch codes and create a new batch.

If you are totally locked out, regaining access to your account will be very difficult and usually involve proving your identity beyond the shadow of a doubt to one of the developers via the Phabricator system who may or may not decide to manually disable 2FA in the database directly. If you cannot satisfy these requirements or the developers deny your request, it is _impossible_ to turn 2FA off and you'll have to create a new account.


Logging in with 2FA

Logging_in_with_2FA_on_Wikipedia.png When you log in, after entering your password, you'll be asked for a verification code.

1.  Open your 2FA app and you should see a 6-digit verification code.
2.  Type the verification code in as is (with no spaces), and you should be logged back in

        Because the verification code is time-based, it may change while you're doing this, in which case you'll have to add the latest code instead. The application will normally indicate when a code is about to expire (e.g. in Google Authenticator, the code's colour changes from blue to red).

AutoWikiBrowser and Huggle users need to create a bot password after enabling 2FA. Please see Wikipedia:Using AWB with 2FA and mw:Manual:Huggle/Bot passwords for instructions.


Disabling 2FA

Disabling_2FA_on_Wikipedia.png If you no longer want to use 2FA, go to Special:Two-factor authentication and you'll be given the option to disable it. You'll need to enter a 6-digit verification code, just as you would when logging in. After this, 2FA will be turned off on your account.

To change your 2FA app or device, just disable 2FA and then follow the instructions at "" or "" to enable it again.


Known issues

Multiple devices

Wikimedia's 2FA system is only designed to be used with one device. If you want to use 2FA on multiple devices, you must register all of your devices at the same time. To add 2FA to an additional device:

1.  Have all of your devices on hand.
2.  If 2FA is already enabled on your account, disable it.
3.  Register all of your devices with the directions at "" and/or "", but don't enter the 6-digit verification code into the Two-factor authentication page until all of your devices are registered.

To remove 2FA from a device, simply remove the Wikipedia entry from your 2FA app. DO NOT DO THIS UNLESS YOU HAVE ACCESS TO 2FA FOR WIKIPEDIA ON ANOTHER DEVICE. To disable 2FA entirely, see "".

Clock drift

If your 2FA device's clock becomes too inaccurate, it will generate the wrong verification codes and you will not be able to log in. To prevent this, the 2FA device's clock should be kept reasonably accurate. Most smartphones and computers keep the clock in sync when they are connected to the Internet, and you will most likely not have to do anything as long as your device is online.


More help

-   Ask the computing reference desk or contact an editor willing to assist with 2FA if you need more help, or if you have any questions.
-   If you find something on this page to be incomplete or unclear, please raise the issue on the and someone will fix it.
-   Email – your ticket will be dealt with by one of the OTRS technical agents.
-   Discuss technical issues at the Technical village pump.
-   Join and/or .
-   See also Metawiki help page for Meta-Wiki's overview of 2FA.


References

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]