# WiseTrackerCordova
WiseTracker Native SDK Cordova Plugin

##iOS 설정 방법

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


### 3. SDK 초기 설정
SDK 설치가 완료되면 Xcode에 다음과 같이 SDK 사용을 위한 파일이 추가된 것을 확인합니다.

![](http://www.wisetracker.co.kr/wp-content/uploads/2019/04/ios-cordova-addfile.jpg)


다음으로, Cordova 프로젝트의 index.js 파일에 SDK를 초기화하는 코드를 추가합니다.

![](http://www.wisetracker.co.kr/wp-content/uploads/2019/04/ios-cordova-indexjs.jpg)

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
		WiseTracker.startPage();
    }
};

app.initialize();
```
