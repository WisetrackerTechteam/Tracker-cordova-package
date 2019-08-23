# WiseTrackerCordova
WiseTracker Native SDK Cordova Plugin

### 1. Plugman 설치
Cordova 환경에서 원격지에(github) 존재하는 라이브러리를 설치하기 위해서 plugman 을 먼저 설치해야 합니다. 이미 plugman 을 사용하고 있다면, 이 과정은 진행하지 않아도 됩니다.


```node
$ npm install -g plugman@1.5
```

### 1-1. Plugman Version 확인 ( recommend : 1.5 version ) 
설치된 plugman 정보를 확인합니다.
간혹 plugman version 이 2.0 인 경우에 원격지의 라이브러리가 설치되지 못하는 현상이 있습니다. 이 경우에는 잠시 plugman 을 1.5 버전으로 다운시켜 라이브러리를 설치하고 다시 업그레이드 하셔도 됩니다.

```node
$ plugman –v
```

### 2. SDK설치
설치된 plugman 을 사용하여 다음과 같이 원격지에(github) 준비된 SDK를 Cordova 프로젝트에 설치합니다.

```node
$ plugman install -d --platform ios --project [프로젝트경로]/platforms/ios --plugin https://github.com/WisetrackerTechteam/WiseTrackerCordova.git
```

### 3. 플러그인 설치 확인

### IOS

SDK 설치가 완료되면 Xcode에 다음과 같이 SDK 사용을 위한 파일이 추가된 것을 확인합니다.

![](http://www.wisetracker.co.kr/wp-content/uploads/2019/08/cordova_index.png)

### ANDROID

#### SDK 설치 확인
SDK 설치가 완료되면 Android Studio에 다음과 같이 SDK 사용을 위한 파일이 추가된 것을 확인 합니다.

![](http://www.wisetracker.co.kr/wp-content/uploads/2019/04/aos-cordova-addfile.jpg)

#### Http 통신 허용 설정
프로젝트의 **Target API 28 이상**일 경우 Android 프로젝트 **AndroidManifest.xml** 파일에 **android:networkSecurityConfig="@xml/network_security_config"** 추가 (network_security_config 파일이 없다면 생성) 이후 xml/network_security_config 파일에 아래의 값을 추가

```xml
// AndroidManifest.xml
<application
	android:icon="@mipmap/ic_launcher"
	android:label="@string/app_name"
	android:networkSecurityConfig="@xml/network_security_config"
	android:theme="@style/AppTheme">
```
	
```xml
// app/res/xml/network_security_config.xml
<?xml version="1.0" encoding="utf-8"?>
<network-security-config>
    <domain-config cleartextTrafficPermitted="true">
        <domain includeSubdomains="true">www.wisetracker.co.kr</domain>
        <domain includeSubdomains="true">trk.wisetracker.co.kr</domain>
    </domain-config>
</network-security-config>
```

### 4. SDK 초기 설정
Cordova 프로젝트의 index.js 파일에 SDK를 초기화하는 코드를 추가합니다.

- index.js 코드 예시

```java script
var app = {
    // Application Constructor
    initialize: function() {
        document.addEventListener('deviceready', this.onDeviceReady.bind(this), false);
    },

    // deviceready Event Handler
    //
    // Bind any cordova events here. Common events are:
    // 'pause', 'resume', etc.
    onDeviceReady: function() {
        this.receivedEvent('deviceready');
    },

    // Update DOM on a Received Event
    receivedEvent: function(id) {
        var parentElement = document.getElementById(id);
        var listeningElement = parentElement.querySelector('.listening');
        var receivedElement = parentElement.querySelector('.received');

        listeningElement.setAttribute('style', 'display:none;');
        receivedElement.setAttribute('style', 'display:block;');

		/*
		** Wisetracker SDK 초기 설정 코드 적용 예시 
		**/
		cordova.plugins.WiseTrackerCordovaBridge.setWisetrackerAppkey("제공받은 앱 인증키를 설정합니다.");
		cordova.plugins.WiseTrackerCordovaBridge.init(); 
		WiseTracker.startPage("pageId"); //해당 페이지를 구분할 수 있는 식별자(ex: pageUrl)
    }
};

app.initialize();
```

### 광고 성과 분석이 필요한 경우

#### iOS
iOS Native의 appDelegate.m파일에 아래와 같이 추가해줍니다.

#import<WiseTracker/WiseTracker.h>

-(BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
	[WiseTracker applicationKey:@"앱의 APPKEY 삽입"];
	[WiseTracker setApplication:application];
	[WiseTracker initEnd];
	[WiseTracker urlRefererCheck:sourceApplication url:url];
	return YES;
}

####Android
