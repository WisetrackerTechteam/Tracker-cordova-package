/**
* set your App Key ( required ) 
**/
exports.setWisetrackerAppkey = function(key, value, success, error) {
	// Native SDK init start.
	cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setWisetrackerAppkey",
						[key]);

}
/**
* Don't modify below source area.
* Create WiseTracker Object to use WebPage. 
**/  
exports.init = function(key, value, success, error) {
  
	cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"init",
						[]);  

	window.WiseTracker = {
	   sendTransaction : function() {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"sendTransaction",
						[]);
	   }, 
	   sendTransactionImmediate : function() {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"sendTransactionImmediate",
						[]);
	   },
   
	   startPage: function(code) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"startPage",
						[code]);
	   },

	   endPage: function(code) {
       	   cordova.exec(function() {console.log('success')},
       					function() {console.log('error')},
       					"WiseTrackerBridge",
       					"endPage",
       					[code]);
       },
   
	   endStartPage: function(code) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"endStartPage",
						[code]);
	   },

	   sendGoalData: function() {
            cordova.exec(function() {console.log('success sendGoalData')},
                         function() {console.log('error sendGoalData')},
                     	 "WiseTrackerBridge",
                     	 "sendGoalData",
                     	 []);
       },
   
	   setGoal: function(key, value) {
		   cordova.exec(function() {console.log('success setGoal')},
						function() {console.log('error setGoal')},
						"WiseTrackerBridge",
						"setGoal",
						[key,value]);
	   },
   
	   setGoalById: function(pageId, key, value) {
		   cordova.exec(function() {console.log('success setGoalById')},
						function() {console.log('error setGoalById')},
						"WiseTrackerBridge",
						"setGoalById",
						[pageId, key,value]);
	   },
   
	   setAcceptPushReceived: function(isAccept) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setAcceptPushReceived",
						[isAccept]);
	   },
   
	   setAcceptPushReceivedById: function(isAccept, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setAcceptPushReceivedById",
						[isAccept, pageId]);
	   },
   
	   setMember: function(isMember) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setMember",
						[isMember]);
	   },
   
	   setGender: function(gender) {
		   cordova.exec(function() {console.log('success')},
					  function() {console.log('error')},
					  "WiseTrackerBridge",
					  "setGender",
					  [gender]);
	   },
   
	   setAge: function(age) {
		   cordova.exec(function() {console.log('success')},
					   function() {console.log('error')},
					   "WiseTrackerBridge",
					   "setAge",
					   [age]);
	   },
   
	   setUserAttribute: function(key, value) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setUserAttribute",
						key, value);
	   },
   
	   setContents: function(cont) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setContents",
						[cont]);
	   },
   
	   setContentsById: function(cont, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setContentsById",
						[cont, pageId]);
	   },
   
	   setPageIdentity: function(pi) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setPageIdentity",
						[pi]);
	   },
   
	   setPageIdentityById: function(pi, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setPageIdentityById",
						[pi, pageId]);
	   },
   
	   setSearchKeyword: function(ikwd) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setSearchKeyword",
						[ikwd]);
	   },
   
	   setGoalSearchKeyword: function(ikwd) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalSearchKeyword",
						[ikwd]);
	   },
   
	   setOrderSearchKeyword: function(ikwd) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderSearchKeyword",
						[ikwd]);
	   },
   
	   setOrderSearchKeywordArray: function(keywordArray) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderSearchKeywordArray",
						[keywordArray]);
	   },
   
	   setSearchKeywordById: function(ikwd, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setSearchKeywordById",
						[ikwd, pageId]);
	   },
   
	   setSearchKeywordResult: function(ikwdCnt) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setSearchKeywordResult",
						[ikwdCnt]);
	   },
   
	   setSearchKeywordResultById: function(ikwdCnt, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setSearchKeywordResultById",
						[ikwdCnt, pageId]);
	   },
   
	   setSearchKeywordCategory: function(ikwdCat) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setSearchKeywordCategory",
						[ikwdCat]);
	   },
   
	   setSearchKeywordCategoryById: function(ikwdCat, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setSearchKeywordCategoryById",
						[ikwdCat, pageId]);
	   },
   
	   setCustomMvtTag: function(key, value) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setCustomMvtTag",
						[key, value]);
	   },
   
	   setGoalCustomMvtTagById: function(key, value, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalCustomMvtTagById",
						[key, value, pageId]);
	   },
   
	   setOrderCustomMvtTag: function(key, value) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderCustomMvtTag",
						[key, value]);
	   },
   
	   setOrderCustomMvtTagArray: function(key, tagArray) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderCustomMvtTagArray",
						[key, tagArray]);
	   },
   
	   setOrderCustomMvtTagById: function(key, value, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderCustomMvtTagById",
						[key, value, pageId]);
	   },
   
	   setExhibit: function(exhibit) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setExhibit",
						[exhibit]);
	   },
   
	   setOrderNo: function(ordNo) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderNo",
						[ordNo]);
	   },
   
	   setOrderNoById: function(ordNo, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderNoById",
						[ordNo, pageId]);
	   },
   
	   setProduct: function(pnc, pncNm) {
		   cordova.exec(function() {console.log('success setProduct')},
						function() {console.log('error setProduct')},
						"WiseTrackerBridge",
						"setProduct",
						[pnc,pncNm]);
	   },
   
	   setProductById: function(pnc, pncNm, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setProductById",
						[pnc, pncNm, pageId]);
	   },
   
	   setGoalProduct: function(pnc) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalProduct",
						[pnc]);
	   },
   
	   setGoalProductById: function(pnc, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalProductById",
						[pnc, pageId]);
	   },
   
	   setGoalProductArray: function(productArray) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalProductArray",
						[productArray]);
	   },
   
	   setGoalProductArrayById: function(productArray, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalProductArrayById",
						[productArray, pageId]);
	   },
   
	   setOrderProduct: function(pnc) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderProduct",
						[pnc]);
	   },
   
	   setOrderProductById: function(pnc, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderProductById",
						[pnc, pageId]);
	   },
   
	   setOrderProductArray: function(productArray) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderProductArray",
						[productArray]);
	   },
   
	   setOrderProductArrayById: function(productArray, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderProductArrayById",
						[pnc, pageId]);
	   },
   
	   setProductCategory: function(png, pngNm) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setProductCategory",
						[png, pngNm]);
	   },
   
	   setProductCategoryById: function(png, pngNm, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setProductCategoryById",
						[png, pngNm, pageId]);
	   },
   
	   setGoalProductCategoryArray: function(categoryArray) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalProductCategoryArray",
						[categoryArray]);
	   },
   
	   setGoalProductCategoryArrayById: function(categoryArray, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalProductCategoryArrayById",
						[categoryArray, pageId]);
	   },
   
	   setOrderProductCategory: function(png) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderProductCategory",
						[png]);
	   },
   
	   setOrderProductCategoryById: function(png) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderProductCategoryById",
						[png, pageId]);
	   },
   
	   setOrderProductCategoryArray: function(categoryArray) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderProductCategoryArray",
						[categoryArray]);
	   },
   
	   setOrderProductCategoryArrayById: function(categoryArray, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderProductCategoryArrayById",
						[categoryArray, pageId]);
	   },
   
	   setProductType: function(pncTp) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setProductType",
						[pncTp]);
	   },
   
	   setProductTypeById: function(pncTp, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setProductTypeById",
						[pncTp, pageId]);
	   },
   
	   setGoalProductType: function(pncTp) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalProductType",
						[pncTp]);
	   },
   
	   setGoalProductTypeById: function(pncTp, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalProductTypeById",
						[pncTp, pageId]);
	   },
   
	   setGoalProductTypeArray: function(productTypeArray) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setGoalProductTypeArray",
						[productTypeArray]);
	   },
   
	   setOrderProductTypeArrayById: function(productTypeArray, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderProductTypeArrayById",
						[productTypeArray, pageId]);
	   },
   
	   setOrderAmount: function(amount) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderAmount",
						[amount]);
	   },
   
	   setOrderAmountById: function(amount, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderAmountById",
						[amount, pageId]);
	   },
   
	   setOrderAmountArray: function(amountArray) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderAmountArray",
						[amountArray]);
	   },
   
	   setOrderAmountArrayById: function(amountArray, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderAmountArrayById",
						[amountArray, pageId]);
	   },
   
	   setOrderQuantity: function(quantity) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderQuantity",
						[quantity]);
	   },
   
	   setOrderQuantityById: function(quantity, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderQuantityById",
						[quantity, pageId]);
	   },
   
	   setOrderQuantityArray: function(quantityArray) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderQuantityArray",
						[quantityArray]);
	   },
   
	   setOrderQuantityArrayById: function(quantityArray, pageId) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setOrderQuantityArrayById",
						[quantityArray, pageId]);
	   },
   
	   sendClickData: function(eventCode, eventName) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"sendClickData",
						[eventCode, eventName]);
	   },
   
	   setPaymentTypeForOllehTv: function(mCd, sCd) {
		   cordova.exec(function() {console.log('success')},
						function() {console.log('error')},
						"WiseTrackerBridge",
						"setPaymentTypeForOllehTv",
						[mCd, sCd]);
	   },

	   setGoalCustomMvtTag: function(key, value) {
       	    cordova.exec(function() {console.log('success')},
       					function() {console.log('error')},
       					"WiseTrackerBridge",
       					"setGoalCustomMvtTag",
       					[key, value]);
       },

       setGoalProductCategory: function(category) {
              cordova.exec(function() {console.log('success')},
              			function() {console.log('error')},
              			"WiseTrackerBridge",
              			"setGoalProductCategory",
              			[category]);
       },

       setOrderProductType: function(type) {
              cordova.exec(function() {console.log('success')},
                     	function() {console.log('error')},
                     	"WiseTrackerBridge",
                     	"setOrderProductType",
                     	[type]);
       },

       setOrderProductTypeArray: function(array) {
              cordova.exec(function() {console.log('success')},
              			function() {console.log('error')},
              			"WiseTrackerBridge",
              			"setOrderProductTypeArray",
              			[array]);
       },

       setOrderConversionData: function(key, value) {
             cordova.exec(function() {console.log('success')},
              			function() {console.log('error')},
              			"WiseTrackerBridge",
              			"setOrderConversionData",
              			[key, value]);
       },
               
       setOrderConversionDataById: function(key, value, pageId) {
           cordova.exec(function() {console.log('success')},
                        function() {console.log('error')},
                        "WiseTrackerBridge",
                        "setOrderConversionDataById",
                        [key, value, pageId]);
       },

       setOrderConversionDataArray: function(key, array) {
             cordova.exec(function() {console.log('success')},
              			function() {console.log('error')},
              			"WiseTrackerBridge",
              			"setOrderConversionDataArray",
              			[key, array]);
       },

       useIkwdWithConversion: function(value) {
             cordova.exec(function() {console.log('success')},
              			function() {console.log('error')},
              			"WiseTrackerBridge",
              			"useIkwdWithConversion",
              			[value]);
       },

       useMvt1WithConversion: function(value) {
            cordova.exec(function() {console.log('success')},
              			function() {console.log('error')},
              			"WiseTrackerBridge",
              			"useMvt1WithConversion",
              			[value]);
       },

       useMvt2WithConversion: function(value) {
             cordova.exec(function() {console.log('success')},
                     	function() {console.log('error')},
                     	"WiseTrackerBridge",
                     	"useMvt2WithConversion",
                     	[value]);
       },

       useMvt3WithConversion: function(value) {
            cordova.exec(function() {console.log('success')},
                     	function() {console.log('error')},
                     	"WiseTrackerBridge",
                     	"useMvt3WithConversion",
                     	[value]);
       },

       setOrderDate: function(date) {
            cordova.exec(function() {console.log('success')},
                        function() {console.log('error')},
                        "WiseTrackerBridge",
                        "setOrderDate",
                        [date]);
       },

       setOrderDateArray: function(date, count) {
            cordova.exec(function() {console.log('success')},
                     	function() {console.log('error')},
                     	"WiseTrackerBridge",
                     	"setOrderDateArray",
                     	[date, count]);
       },

       setWisetrackerDebugMode: function(mode) {
            cordova.exec(function() {console.log('success')},
                     	function() {console.log('error')},
                     	"WiseTrackerBridge",
                     	"setWisetrackerDebugMode",
                     	[mode]);
       },

       sendImmediatelyClickData: function(key, value) {
            cordova.exec(function() {console.log('success')},
                       function() {console.log('error')},
                       "WiseTrackerBridge",
                       "sendImmediatelyClickData",
                       [key, value]);
       }
   };
} 