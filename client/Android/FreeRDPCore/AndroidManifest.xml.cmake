<?xml version="1.0" encoding="UTF-8"?>

<manifest xmlns:android="http://schemas.android.com/apk/res/android"
	android:installLocation="auto"
	package="com.freerdp.freerdpcore"
	android:versionCode="@ANDROID_APP_VERSION@"
	android:versionName="@GIT_REVISION@" >

	<uses-sdk
		android:targetSdkVersion="@ANDROID_APP_TARGET_SDK@"
		android:minSdkVersion="@ANDROID_APP_MIN_SDK@"/>

	<uses-permission android:name="android.permission.INTERNET"/>
	<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
	<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
	<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
  <uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS"/>
  <uses-permission android:name="android.permission.RECORD_AUDIO"/>
	
	<supports-screens
		android:anyDensity="true"
		android:smallScreens="true"
		android:normalScreens="true"
		android:largeScreens="true"
		android:xlargeScreens="true" />

	<application
		android:theme="@style/Theme.Main"
		android:debuggable="@ANDROID_DEBUG_ENABLE@">

		<!-- Activity to create shortcuts -->
        <activity
            android:name=".presentation.ShortcutsActivity"
            android:label="@string/title_create_shortcut"
            android:theme="@style/Theme.Main" >
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />

                <category android:name="android.intent.category.DEFAULT" />
            </intent-filter>
        </activity>

        <!-- It is recommended that you use an activity-alias to provide the "CREATE_SHORTCUT" -->
        <!-- intent-filter.  This gives you a way to set the text (and optionally the -->
        <!-- icon) that will be seen in the launcher's create-shortcut user interface. -->
        <activity-alias
            android:name=".presentation.CreateShortcuts"
            android:label="@string/title_create_shortcut"
            android:targetActivity="com.freerdp.freerdpcore.presentation.ShortcutsActivity" >

            <!-- This intent-filter allows your shortcuts to be created in the launcher. -->
            <intent-filter>
                <action android:name="android.intent.action.CREATE_SHORTCUT" />

                <category android:name="android.intent.category.DEFAULT" />
            </intent-filter>
        </activity-alias>

        <activity
            android:name=".presentation.BookmarkActivity"
            android:label="@string/title_bookmark_settings"
            android:theme="@style/Theme.Settings" >
            <intent-filter>
                <action android:name="freerdp.intent.action.BOOKMARK" />

                <category android:name="android.intent.category.DEFAULT" />

                <data android:scheme="preferences" />
            </intent-filter>
        </activity>
        <activity
            android:name=".presentation.ApplicationSettingsActivity"
            android:label="@string/title_application_settings"
            android:theme="@style/Theme.Settings"
            android:windowSoftInputMode="stateHidden" >
        </activity>
        <activity
            android:name=".presentation.SessionActivity"
            android:configChanges="orientation|keyboardHidden|keyboard"
            android:theme="@style/Theme.Main"
            android:windowSoftInputMode="adjustResize" >
        </activity>
        <activity
            android:name=".presentation.AboutActivity"
            android:label="@string/title_about"
            android:theme="@style/Theme.Main" >
        </activity>
        <activity
            android:name=".presentation.HelpActivity"
            android:label="@string/title_help"
            android:theme="@style/Theme.Main" >
        </activity>
        
        <receiver
            android:name=".application.NetworkStateReceiver"
            android:enabled="true" >
            <intent-filter>
                <action android:name="android.net.conn.CONNECTIVITY_CHANGE" />
            </intent-filter>
        </receiver>
    </application>

</manifest>

