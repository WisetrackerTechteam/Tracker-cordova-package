package kr.co.wisetracker.tracker;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

import kr.co.wisetracker.tracker.WiseTracker;

/**
 * This class echoes a string called from JavaScript.
 */
public class WiseTrackerBridge extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {

        try {

            Context context = this.cordova.getActivity();

            if (action.equals("toast")) {

                Log.d("cordova", "toast test");
                String message = args.getString(0);
                Log.d("cordova", "toast test message : " + message);
                Toast.makeText(context, "cordova toast test\nmessage : " + message, Toast.LENGTH_SHORT).show();
                callbackContext.success("toast success");
                return true;

            } else if (action.equals("init")) {

                Log.d("cordova", "init");
                WiseTracker.init(context);
                callbackContext.success("init success");
                return true;

            } else if (action.equals("initStart")) {

                Log.d("cordova", "initStart");
                WiseTracker.initStart(context);
                callbackContext.success("initStart success");
                return true;

            } else if (action.equals("initEnd")) {

                Log.d("cordova", "initEnd");
                WiseTracker.initEnd();
                callbackContext.success("initEnd success");
                return true;

            } else if (action.equals("sendTransaction")) {

                Log.d("cordova", "sendTransaction");
                WiseTracker.sendTransaction();
                callbackContext.success("sendTransaction success");
                return true;

            } else if (action.equals("initPushSet")) {

                Log.d("cordova", "initPushSet");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.initPushSet(key, value);
                callbackContext.success("initPushSet success");
                return true;

            } else if (action.equals("putInitData")) {

                Log.d("cordova", "putInitData");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.putInitData(key, value);
                callbackContext.success("putInitData success");
                return true;

            } else if (action.equals("startPage")) {

                Log.d("cordova", "startPage");
                String obj = args.getString(0);
                Log.d("cordova", "obj : " + obj);
                WiseTracker.startPage(obj);
                callbackContext.success("startPage success");
                return true;

            } else if (action.equals("endPage")) {

                Log.d("cordova", "endPage");
                String pageCode = args.getString(0);
                Log.d("cordova", "page code : " + pageCode);
                WiseTracker.endPage(pageCode);
                callbackContext.success("endPage success");
                return true;

            } else if (action.equals("endStartPage")) {

                Log.d("cordova", "endStartPage");
                String pageCode = args.getString(0);
                Log.d("cordova", "page code : " + pageCode);
                WiseTracker.endStartPage(pageCode);
                callbackContext.success("endStartPage success");
                return true;

            } else if (action.equals("putSessionData")) {

                Log.d("cordova", "putSessionData");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.putSessionData(key, value);
                callbackContext.success("putSessionData success");
                return true;

            } else if (action.equals("putSessionReferrer")) {
                Log.d("cordova", "putSessionReferrer");
                String referrer = args.getString(0);
                Log.d("cordova", "referrer : " + referrer);
                WiseTracker.putSessionReferrer(referrer);
                callbackContext.success("putSessionReferrer success");
                return true;

            } else if (action.equals("sendGoalData")) {

                Log.d("cordova", "sendGoalData");
                WiseTracker.sendGoalData();
                callbackContext.success("sendGoalData success");
                return true;

            } else if (action.equals("setGoal")) {

                Log.d("cordova", "setGoal");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.setGoal(key, Integer.valueOf(value));
                callbackContext.success("setGoal success");
                return true;

            } else if (action.equals("setAcceptPushReceived")) {

                Log.d("cordova", "setAcceptPushReceived");
                String isAccepted = args.getString(0);
                Log.d("cordova", "kisAcceptedey : " + isAccepted);
                WiseTracker.setAcceptPushReceived(Boolean.valueOf(isAccepted));
                callbackContext.success("setAcceptPushReceived success");
                return true;

            } else if (action.equals("setGoalCustomMvtTag")) {

                Log.d("cordova", "setGoalCustomMvtTag");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.setGoalCustomMvtTag(key, value);
                callbackContext.success("setGoalCustomMvtTag success");
                return true;

            } else if (action.equals("setGoalProduct")) {

                Log.d("cordova", "setGoalProduct");
                String code = args.getString(0);
                Log.d("cordova", "code : " + code);
                WiseTracker.setGoalProduct(code);
                callbackContext.success("setGoalProduct success");
                return true;

            } else if (action.equals("setGoalProductArray")) {

                Log.d("cordova", "setGoalProductArray");

                JSONArray array = args.getJSONArray(0);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                String[] codeArray = new String[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    codeArray[i] = array.getString(i);
                    Log.d("cordova", "value[" + i + "] = " + codeArray[i]);
                }

                WiseTracker.setGoalProductArray(codeArray);
                callbackContext.success("setGoalProductArray success");
                return true;

            } else if (action.equals("setGoalProductType")) {

                Log.d("cordova", "setGoalProductType");
                String type = args.getString(0);
                Log.d("cordova", "type : " + type);
                WiseTracker.setGoalProductType(type);
                callbackContext.success("setGoalProductType success");
                return true;

            } else if (action.equals("setGoalProductTypeArray")) {

                Log.d("cordova", "setGoalProductTypeArray");

                JSONArray array = args.getJSONArray(0);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                String[] typeArray = new String[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    typeArray[i] = array.getString(i);
                    Log.d("cordova", "value[" + i + "] = " + typeArray[i]);
                }

                WiseTracker.setGoalProductTypeArray(typeArray);
                callbackContext.success("setGoalProductTypeArray success");
                return true;

            } else if (action.equals("setGoalProductCategory")) {

                Log.d("cordova", "setGoalProductCategory");
                String category = args.getString(0);
                Log.d("cordova", "category : " + category);
                WiseTracker.setGoalProductCategory(category);
                callbackContext.success("setGoalProductCategory success");
                return true;

            } else if (action.equals("setGoalProductCategoryArray")) {

                Log.d("cordova", "setGoalProductCategoryArray");

                JSONArray array = args.getJSONArray(0);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                String[] categoryArray = new String[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    categoryArray[i] = array.getString(i);
                    Log.d("cordova", "value[" + i + "] = " + categoryArray[i]);
                }

                WiseTracker.setGoalProductCategoryArray(categoryArray);
                callbackContext.success("setGoalProductCategoryArray success");
                return true;

            } else if (action.equals("setExhibit")) {

                Log.d("cordova", "setExhibit");
                String exhibit = args.getString(0);
                Log.d("cordova", "exhibit : " + exhibit);
                WiseTracker.setExhibit(exhibit);
                callbackContext.success("setExhibit success");
                return true;

            } else if (action.equals("setProduct")) {

                Log.d("cordova", "setProduct");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.setProduct(key, value);
                callbackContext.success("setProduct success");
                return true;

            } else if (action.equals("setProductType")) {

                Log.d("cordova", "setProductType");
                String type = args.getString(0);
                Log.d("cordova", "type : " + type);
                WiseTracker.setProductType(type);
                callbackContext.success("setProductType success");
                return true;

            } else if (action.equals("setProductCategory")) {

                Log.d("cordova", "setProductCategory");
                String category = args.getString(0);
                Log.d("cordova", "category: " + category);
                String name = args.getString(1);
                Log.d("cordova", "name: " + name);
                WiseTracker.setProductCategory(category, name);
                callbackContext.success("setProductCategory success");
                return true;

            } else if (action.equals("setOrderCustomMvtTag")) {

                Log.d("cordova", "setOrderCustomMvtTag");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.setOrderCustomMvtTag(key, value);
                callbackContext.success("setOrderCustomMvtTag success");
                return true;

            } else if (action.equals("setOrderCustomMvtTagArray")) {

                Log.d("cordova", "setOrderCustomMvtTagArray");

                String key = args.getString(0);
                Log.d("cordova", "key : " + key);
                JSONArray array = args.getJSONArray(1);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                String[] codeArray = new String[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    codeArray[i] = array.getString(i);
                    Log.d("cordova", "value[" + i + "] = " + codeArray[i]);
                }

                WiseTracker.setOrderCustomMvtTagArray(key, codeArray);
                callbackContext.success("setOrderCustomMvtTagArray success");
                return true;

            } else if (action.equals("setOrderProduct")) {

                Log.d("cordova", "setOrderProduct");
                String code = args.getString(0);
                Log.d("cordova", "key : " + code);
                WiseTracker.setOrderProduct(code);
                callbackContext.success("setOrderProduct success");
                return true;

            } else if (action.equals("setOrderProductArray")) {

                Log.d("cordova", "setOrderProductArray");

                JSONArray array = args.getJSONArray(0);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                String[] codeArray = new String[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    codeArray[i] = array.getString(i);
                    Log.d("cordova", "value[" + i + "] = " + codeArray[i]);
                }

                WiseTracker.setOrderProductArray(codeArray);
                callbackContext.success("setOrderProductArray success");
                return true;

            } else if (action.equals("setOrderProductType")) {

                Log.d("cordova", "setOrderProductType");
                String type = args.getString(0);
                Log.d("cordova", "type : " + type);
                WiseTracker.setOrderProductType(type);
                callbackContext.success("setOrderProductType success");
                return true;

            } else if (action.equals("setOrderProductTypeArray")) {

                Log.d("cordova", "setOrderProductTypeArray");

                JSONArray array = args.getJSONArray(0);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                String[] typeArray = new String[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    typeArray[i] = array.getString(i);
                    Log.d("cordova", "value[" + i + "] = " + typeArray[i]);
                }

                WiseTracker.setOrderProductTypeArray(typeArray);
                callbackContext.success("setOrderProductTypeArray success");
                return true;

            } else if (action.equals("setOrderProductCategory")) {

                Log.d("cordova", "setOrderProductCategory");
                String category = args.getString(0);
                Log.d("cordova", "category : " + category);
                WiseTracker.setOrderProductCategory(category);
                callbackContext.success("setOrderProductCategory success");
                return true;

            } else if (action.equals("setOrderProductCategoryArray")) {

                Log.d("cordova", "setOrderProductCategoryArray");

                JSONArray array = args.getJSONArray(0);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                String[] categoryArray = new String[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    categoryArray[i] = array.getString(i);
                    Log.d("cordova", "value[" + i + "] = " + categoryArray[i]);
                }

                WiseTracker.setOrderProductCategoryArray(categoryArray);
                callbackContext.success("setOrderProductCategoryArray success");
                return true;

            } else if (action.equals("setOrderAmount")) {

                Log.d("cordova", "setOrderAmount");
                String value = args.getString(0);
                Log.d("cordova", "value : " + value);
                WiseTracker.setOrderAmount(Double.valueOf(value));
                callbackContext.success("setOrderAmount success");
                return true;

            } else if (action.equals("setOrderAmountArray")) {

                Log.d("cordova", "setOrderAmountArray");

                JSONArray array = args.getJSONArray(0);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                double[] valueArray = new double[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    valueArray[i] = Double.valueOf(array.getString(i));
                    Log.d("cordova", "value[" + i + "] = " + valueArray[i]);
                }

                WiseTracker.setOrderAmountArray(valueArray);
                callbackContext.success("setOrderAmountArray success");
                return true;

            } else if (action.equals("setOrderConversionData")) {

                Log.d("cordova", "setOrderConversionData");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.setOrderConversionData(key, Double.valueOf(value));
                callbackContext.success("setOrderConversionData success");
                return true;

            } else if (action.equals("setOrderConversionDataArray")) {

                Log.d("cordova", "setOrderConversionDataArray");

                String key = args.getString(0);
                JSONArray array = args.getJSONArray(1);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                double[] valueArray = new double[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    valueArray[i] = Double.valueOf(array.getString(i));
                    Log.d("cordova", "value[" + i + "] = " + valueArray[i]);
                }

                WiseTracker.setOrderConversionDataArray(key, valueArray);
                callbackContext.success("setOrderConversionDataArray success");
                return true;

            } else if (action.equals("useIkwdWithConversion")) {

                Log.d("cordova", "useIkwdWithConversion");
                String value = args.getString(0);
                Log.d("cordova", "value : " + value);
                WiseTracker.useIkwdWithConversion(value);
                callbackContext.success("useIkwdWithConversion success");
                return true;

            } else if (action.equals("useMvt1WithConversion")) {

                Log.d("cordova", "useMvt1WithConversion");
                String value = args.getString(0);
                Log.d("cordova", "value : " + value);
                WiseTracker.useMvt1WithConversion(value);
                callbackContext.success("useMvt1WithConversion success");
                return true;

            } else if (action.equals("useMvt2WithConversion")) {

                Log.d("cordova", "useMvt2WithConversion");
                String value = args.getString(0);
                Log.d("cordova", "value : " + value);
                WiseTracker.useMvt2WithConversion(value);
                callbackContext.success("useMvt2WithConversion success");
                return true;

            } else if (action.equals("useMvt3WithConversion")) {

                Log.d("cordova", "useMvt3WithConversion");
                String value = args.getString(0);
                Log.d("cordova", "value : " + value);
                WiseTracker.useMvt3WithConversion(value);
                callbackContext.success("useMvt3WithConversion success");
                return true;

            } else if (action.equals("setOrderNo")) {

                Log.d("cordova", "setOrderNo");
                String orderNo = args.getString(0);
                Log.d("cordova", "orderNo : " + orderNo);
                WiseTracker.setOrderNo(orderNo);
                callbackContext.success("setOrderNo success");
                return true;

            } else if (action.equals("setOrderQuantity")) {

                Log.d("cordova", "setOrderQuantity");
                String value = args.getString(0);
                Log.d("cordova", "value : " + value);
                WiseTracker.setOrderQuantity(Integer.valueOf(value));
                callbackContext.success("setOrderQuantity success");
                return true;

            } else if (action.equals("setOrderQuantityArray")) {

                Log.d("cordova", "setOrderQuantityArray");
                JSONArray array = args.getJSONArray(0);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                int[] valueArray = new int[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    valueArray[i] = Integer.valueOf(array.getString(i));
                    Log.d("cordova", "value[" + i + "] = " + valueArray[i]);
                }

                WiseTracker.setOrderQuantityArray(valueArray);
                callbackContext.success("setOrderQuantityArray success");
                return true;

            } else if (action.equals("setContents")) {

                Log.d("cordova", "setContents");
                String contents = args.getString(0);
                Log.d("cordova", "contents : " + contents);
                WiseTracker.setContents(contents);
                callbackContext.success("setContents success");
                return true;

            } else if (action.equals("setPageIdentity")) {

                Log.d("cordova", "setPageIdentity");
                String identify = args.getString(0);
                Log.d("cordova", "identify : " + identify);
                WiseTracker.setPageIdentity(identify);
                callbackContext.success("setPageIdentity success");
                return true;

            } else if (action.equals("setSearchKeyword")) {

                Log.d("cordova", "setSearchKeyword");
                String keyword = args.getString(0);
                Log.d("cordova", "keyword : " + keyword);
                WiseTracker.setSearchKeyword(keyword);
                callbackContext.success("setSearchKeyword success");
                return true;

            } else if (action.equals("setGoalSearchKeyword")) {

                Log.d("cordova", "setGoalSearchKeyword");
                String goalSearchKeyword = args.getString(0);
                Log.d("cordova", "search keyword : " + goalSearchKeyword);
                WiseTracker.setGoalSearchKeyword(goalSearchKeyword);
                callbackContext.success("setGoalSearchKeyword success");
                return true;

            } else if (action.equals("setOrderSearchKeyword")) {

                Log.d("cordova", "setOrderSearchKeyword");
                String orderSearchKeyword = args.getString(0);
                Log.d("cordova", "order search keyword : " + orderSearchKeyword);
                WiseTracker.setOrderSearchKeyword(orderSearchKeyword);
                callbackContext.success("setOrderSearchKeyword success");
                return true;

            } else if (action.equals("setOrderSearchKeywordArray")) {

                Log.d("cordova", "setOrderSearchKeywordArray");

                JSONArray array = args.getJSONArray(0);
                if (array == null || array.length() == 0) {
                    Log.d("cordova", "array data is null or empty");
                    return false;
                }

                String[] keywordArray = new String[array.length()];
                for (int i = 0; i < array.length(); i++) {
                    keywordArray[i] = array.getString(i);
                    Log.d("cordova", "value[" + i + "] = " + keywordArray[i]);
                }

                WiseTracker.setOrderSearchKeywordArray(keywordArray);
                callbackContext.success("setOrderSearchKeywordArray success");
                return true;

            } else if (action.equals("setSearchKeywordResult")) {

                Log.d("cordova", "setSearchKeywordResult");
                String count = args.getString(0);
                Log.d("cordova", "count : " + count);
                WiseTracker.setSearchKeywordResult(Integer.valueOf(count));
                callbackContext.success("setSearchKeywordResult success");
                return true;

            } else if (action.equals("setSearchKeywordCategory")) {

                Log.d("cordova", "setSearchKeywordCategory");
                String category = args.getString(0);
                Log.d("cordova", "category : " + category);
                WiseTracker.setSearchKeywordCategory(category);
                callbackContext.success("setSearchKeywordCategory success");
                return true;

            } else if (action.equals("setMember")) {

                Log.d("cordova", "setMember");
                String member = args.getString(0);
                Log.d("cordova", "member : " + member);
                WiseTracker.setMember(member);
                callbackContext.success("setMember success");
                return true;

            } else if (action.equals("setGender")) {

                Log.d("cordova", "setGender");
                String gender = args.getString(0);
                Log.d("cordova", "gender : " + gender);
                WiseTracker.setGender(gender);
                callbackContext.success("setGender success");
                return true;

            } else if (action.equals("setAge")) {

                Log.d("cordova", "setAge");
                String age = args.getString(0);
                Log.d("cordova", "age : " + age);
                WiseTracker.setAge(age);
                callbackContext.success("setAge success");
                return true;

            } else if (action.equals("setUserAttribute")) {

                Log.d("cordova", "setUserAttribute");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.setUserAttribute(key, value);
                callbackContext.success("setUserAttribute success");
                return true;

            } else if (action.equals("setCustomMvtTag")) {

                Log.d("cordova", "setCustomMvtTag");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.setCustomMvtTag(key, value);
                callbackContext.success("setCustomMvtTag success");
                return true;

            } else if (action.equals("setOrderDate")) {

                Log.d("cordova", "setOrderDate");
                String orderDate = args.getString(0);
                Log.d("cordova", "orderDate : " + orderDate);
                WiseTracker.setOrderDate(orderDate);
                callbackContext.success("setOrderDate success");
                return true;

            } else if (action.equals("setOrderDateArray")) {

                Log.d("cordova", "setOrderDateArray");
                String orderDate = args.getString(0);
                String count = args.getString(1);
                Log.d("cordova", "orderDate : " + orderDate);
                Log.d("cordova", "count : " + count);
                WiseTracker.setOrderDateArray(orderDate, Integer.valueOf(count));
                callbackContext.success("setOrderDateArray success");
                return true;

            } else if (action.equals("setWisetrackerAppkey")) {

                Log.d("cordova", "setWisetrackerAppkey");
                String appKey = args.getString(0);
                Log.d("cordova", "app key : " + appKey);
                WiseTracker.setWisetrackerAppkey(appKey);
                callbackContext.success("setWisetrackerAppkey success");
                return true;

            } else if (action.equals("setWisetrackerDebugMode")) {

                Log.d("cordova", "setWisetrackerDebugMode");
                String mode = args.getString(0);
                Log.d("cordova", "debug mode : " + mode);
                WiseTracker.setWisetrackerDebugMode(Boolean.valueOf(mode));
                callbackContext.success("setWisetrackerDebugMode success");
                return true;

            } else if (action.equals("sendClickData")) {

                Log.d("cordova", "sendClickData");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.sendClickData(key, value);
                callbackContext.success("sendClickData success");
                return true;

            } else if (action.equals("sendImmediatelyClickData")) {

                Log.d("cordova", "sendImmediatelyClickData");
                String key = args.getString(0);
                String value = args.getString(1);
                Log.d("cordova", "key : " + key);
                Log.d("cordova", "value : " + value);
                WiseTracker.sendImmediatelyClickData(key, value);
                callbackContext.success("sendImmediatelyClickData success");
                return true;

            }

        } catch (Exception e) {
            callbackContext.error(action + " fail");
            Log.e("cordova", "get error !!", e);
        }

        return false;

    }

}
