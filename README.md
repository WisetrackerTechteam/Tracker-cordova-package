### 1. 코르도바 플러그인 설치 (AOS/IOS 공통 설정)

#### 1.1 Plugman 설치 (Plugman 미설치 경우에 해당)

#### a) Plugman 설치

```node
$ npm install -g plugman@1.5
```

#### b) Plugman 설치 버전 확인 
plugman version 2.0 이상인 경우에 원격지의 라이브러리가 정상 설치되지 못하는 현상이 있어, **plugman 1.5 버전 사용을 권장**합니다.


```node
// plugman 버전 정보 확인
$ plugman –v
```

#### 1.2 플러그인 다운로드
터미널에서 아래의 명령어를 통해 코르도바 플러그인을 프로젝트에 다운로드 합니다.

#### a) Android

```node
$ plugman install -d --platform android --project [프로젝트경로]/platforms/android --plugin https://github.com/WisetrackerTechteam/Tracker-cordova-package.git
```

#### b) IOS
```node
$ plugman install -d --platform ios --project [프로젝트경로]/platforms/ios --plugin https://github.com/WisetrackerTechteam/Tracker-cordova-package.git
```

#### 1.3 플러그인 설치 확인

#### a) Android
코르도바 프로젝트에 플러그인이 정상 다운로드되면 안드로이드 스튜디오를 통해 다음과 같이 플러그인 파일이 추가된 것을 확인할 수 있습니다.

![](http://www.wisetracker.co.kr/wp-content/uploads/2019/04/aos-cordova-addfile.jpg)

#### b) IOS
코르도바 프로젝트에 플러그인이 정상 다운로드되면 X-code를 통해 다음과 같이 플러그인 파일이 추가된 것을 확인할 수 있습니다.

![](http://www.wisetracker.co.kr/wp-content/uploads/2019/08/cordova_index.png)

#### 1.4 Wisetracker AppKey 발급

http://report.wisetracker.co.kr 로그인

설정 > 기본설정 > 서비스 > Android 분석코드 (AppKey) 클릭 > AppKey 복사 후 적용

![Appkey 등록](https://dzf8vqv24eqhg.cloudfront.net/userfiles/6274/8379/ckfinder/images/016.png?dc=201702100857-66 "Appkey 등록")

### 2. Android 코르도바 플러그인 설정

#### 2.1 AndroidManifest.xml 설정

#### a) Http 통신 허용 설정
코르도바 안드로이드 프로젝트의 **targetSdkVersion 28 이상**일 경우 http 통신 허용 설정을 해야 합니다.

AndroidManifest.xml 파일의 <application 태그 안에 **android:networkSecurityConfig="@xml/network_security_config"** 내용을 추가해 주세요. (**network_security_config 파일이 없다면 생성**) 

```xml
// AndroidManifest.xml
<application
	android:icon="@mipmap/ic_launcher"
	android:label="@string/app_name"
	android:networkSecurityConfig="@xml/network_security_config"
	android:theme="@style/AppTheme">
```

xml/network_security_config 파일에 아래 내용 추가

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

#### b) 디버깅 모드 설정

```xml
<!-- 개발용 true 배포용 false 권장 -->
<meta-data 
	android:name="WiseTrackerLogState" 
	android:value="true" />
```

#### c) 딥링크 설정
딥링크로 진입할 android:scheme="YOUR_SCHEME" 스키마와 android:host="YOUR_HOST" 호스트를 설정해 주세요.

```xml
<!-- 예시는 wisetracker://wisetracker.co.kr 링크로 진입시 딥링크 분석이 가능하며, 사용될 값을 직접 수정해 주세요. -->
<activity android:name="kr.co.wisetracker.tracker.DeepLinkActivity" 
          android:launchMode="singleTop" >
    <intent-filter>
        <action android:name="android.intent.action.VIEW" />
        <category android:name="android.intent.category.DEFAULT" />
        <category android:name="android.intent.category.BROWSABLE" />
	<!-- 딥링크로 진입될 스키마와 호스트 정보 입력 -->
        <data android:host="wisetracker.co.kr"
              android:scheme="wisetracker" />
    </intent-filter>
</activity>
```

### 3. IOS 코르도바 플러그인 설정

##### 3.1 http 통신 허용 설정
- http통신을 허용하기 위해 info.plist파일에 NSAppTransportSecurity를 아래와 같이 추가합니다

```xml
	<key>NSAppTransportSecurity</key>
	<dict>
		<key>NSAllowsArbitraryLoads</key>
		<true/>
	</dict>
```
#### 3.2 info.plist파일 디버깅 모드 세팅
info.plist 파일을 open할때 list로 보기가 아니라 source로 보기를 선택한 후, 아래와 같이 추가합니다

```xml
// 개발용 true. 배포용 false 권장
    <key>WiseTrackerLogState</key>
    <string>true</string>
```

#### 3.3 외부 유입 경로 분석 ( Deeplink )
앱이 설치된 이후 DeepLink를 통해서 앱이 실행되는 경로 분석이 필요한 경우 
네이티브 프로젝트의 AppDelegate 정의 항목중 openURL 함수 구현부에 아래와 같이 추가해줍니다.

 #import<WiseTracker/WiseTracker.h> 추가

##### iOS 4.2–9.0
```Objective-C
-(BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
	[WiseTracker urlRefererCheck:sourceApplication url:url];
	return YES;
}
```

OR

##### iOS 9.0+

```Objective-C
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    [WiseTracker urlRefererCheck:@"" url:url];
    return YES;

}
```

### 4. 플러그인 초기화
코르도바 프로젝트에서 앱 시작시 가장 먼저 로드되는 .js 파일에 플러그인을 초기화하는 코드를 추가합니다.
아래 3가지 기본 적용 코드를 삽입해주세요. 적용 샘플코드 참조해주세요.

#### 4.1 AppKey 설정
```javascript
cordova.plugins.WiseTrackerCordovaBridge.setWisetrackerAppkey("YOUR_APP_KEY");
```

#### 4.2 init 호출
```javascript
cordova.plugins.WiseTrackerCordovaBridge.init(); 
```

#### 4.3 페이지 분석 호출
```javascript
WiseTracker.startPage("YOUR_UNIQUE_PAGE_VALUE");
```

**샘플 코드는 index.js 기준으로 작성하였습니다. 적용 프로젝트에 맞게 설정해 주세요.**

```javascript

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
		*/
		cordova.plugins.WiseTrackerCordovaBridge.setWisetrackerAppkey("제공받은 앱 인증키를 설정합니다.");
		cordova.plugins.WiseTrackerCordovaBridge.init(); 
		WiseTracker.startPage("pageId"/* 페이지 식별자 입력 */); 
		
    }
    
};

app.initialize();
```
