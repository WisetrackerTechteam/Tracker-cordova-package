//
//  Echo.m
//  HelloWorld
//
//  Created by Woncheol Heo on 2019. 1. 23..
//

#import "WiseTrackerBridge.h"
#import <WiseTracker/WiseTracker.h>
@implementation WiseTrackerBridge
    
- (void)setWisetrackerAppkey:(CDVInvokedUrlCommand*)command  {
    
    NSString *appKey = [command.arguments objectAtIndex:0];
    
    [WiseTracker applicationKey:appKey];
    
}
    
- (void)init:(CDVInvokedUrlCommand*)command {
    [WiseTracker setApplication:[UIApplication sharedApplication]];
    [WiseTracker initEnd];
}
    
- (void)sendTransaction:(CDVInvokedUrlCommand*)command {
    
    [WiseTracker sendTransaction];
}
    
- (void)sendTransactionImmediate:(CDVInvokedUrlCommand*)command {
    
    [WiseTracker sendTransaction];
}
    
- (void)startPage:(CDVInvokedUrlCommand*)command {
    
    //CDVPluginResult* pluginResult = nil;
    //NSString* cp = [command.arguments objectAtIndex:0];
    NSString *pageUrl = [command.arguments objectAtIndex:0];
    
    NSLog(@"startpage: %@", pageUrl);
    [WiseTracker startPage:pageUrl];
    
}
    
- (void)endStartPage:(CDVInvokedUrlCommand*)command {
    NSString *pageUrl = [command.arguments objectAtIndex:0];
    NSLog(@"endStartPage: %@", pageUrl);
    
    [WiseTracker endPage:pageUrl];
    [WiseTracker startPage:pageUrl];
}
    
- (void)setGoal:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSInteger value = [[command.arguments objectAtIndex:1] integerValue];
    
    [WiseTracker setGoal:key value:[NSNumber numberWithInteger:value]];
}

- (void)setGoalById:(CDVInvokedUrlCommand*)command {
    NSString *pageId = [command.arguments objectAtIndex:0];
    NSString *key = [command.arguments objectAtIndex:1];
    NSInteger value = [[command.arguments objectAtIndex:2] integerValue];
    
    [WiseTracker setGoal:key value:[NSNumber numberWithInteger:value] byId:pageId];
}
    
- (void)setAcceptPushReceived:(CDVInvokedUrlCommand*)command {
    Boolean isAccept = [[command.arguments objectAtIndex:0] boolValue];
    
    [WiseTracker setAcceptPushReceived:isAccept];
}
    
- (void)setAcceptPushReceivedById:(CDVInvokedUrlCommand*)command {
    Boolean isAccept = [[command.arguments objectAtIndex:0] boolValue];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setAcceptPushReceived:isAccept byId:pageId];
}
    
- (void)setMember:(CDVInvokedUrlCommand*)command {
    NSString *isMember = [command.arguments objectAtIndex:0];
    
    [WiseTracker setMember:isMember];
}
    
- (void)setGender:(CDVInvokedUrlCommand*)command {
    NSString *gender = [command.arguments objectAtIndex:0];
    
    [WiseTracker setGender:gender];
}
    
- (void)setAge:(CDVInvokedUrlCommand*)command {
    NSString *age = [command.arguments objectAtIndex:0];
    
    [WiseTracker setAge:age];
}
    
- (void)setUserAttribute:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSString *value = [command.arguments objectAtIndex:1];
    
    [WiseTracker setUserAttribute:key attribute:value];
}
    
- (void)setContents:(CDVInvokedUrlCommand*)command {
    NSString *cont = [command.arguments objectAtIndex:0];
    
    [WiseTracker setContents:cont];
}
    
- (void)setContentsById:(CDVInvokedUrlCommand*)command {
    NSString *cont = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setContents:cont byId:pageId];
}
    
- (void)setPageIdentity:(CDVInvokedUrlCommand*)command {
    NSString *pi = [command.arguments objectAtIndex:0];
    
    [WiseTracker setPageIdentity:pi];
}
    
- (void)setPageIdentityById:(CDVInvokedUrlCommand*)command {
    NSString *pi = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setPageIdentity:pi byId:pageId];
}
    
- (void)setSearchKeyword:(CDVInvokedUrlCommand*)command {
    NSString *ikwd = [command.arguments objectAtIndex:0];
    
    [WiseTracker setSearchKeyword:ikwd];
}
    
- (void)setGoalSearchKeyword:(CDVInvokedUrlCommand*)command {
    NSString *ikwd = [command.arguments objectAtIndex:0];
    
    [WiseTracker setGoalSearchKeyword:ikwd];
}
    
- (void)setOrderSearchKeyword:(CDVInvokedUrlCommand*)command {
    NSString *ikwd = [command.arguments objectAtIndex:0];
    
    [WiseTracker setGoalSearchKeyword:ikwd];
}
    
- (void)setOrderSearchKeywordArray:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setOrderSearchKeywordArray:arrString];
}
    
- (void)setSearchKeywordById:(CDVInvokedUrlCommand*)command {
    NSString *ikwd = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setSearchKeyword:ikwd byId:pageId];
}
    
- (void)setSearchKeywordResult:(CDVInvokedUrlCommand*)command {
    NSInteger ikwdCnt = [[command.arguments objectAtIndex:0] integerValue];
    
    [WiseTracker setSearchKeywordResult:ikwdCnt];
}
    
- (void)setSearchKeywordResultById:(CDVInvokedUrlCommand*)command {
    NSInteger ikwdCnt = [[command.arguments objectAtIndex:0] integerValue];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setSearchKeywordResult:ikwdCnt byId:pageId];
}
    
- (void)setSearchKeywordCategory:(CDVInvokedUrlCommand*)command {
    NSString *ikwdCat = [command.arguments objectAtIndex:0];
    
    [WiseTracker setSearchKeywordCategory:ikwdCat];
}
    
- (void)setSearchKeywordCategoryById:(CDVInvokedUrlCommand*)command {
    NSString *ikwdCat = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setSearchKeywordCategory:ikwdCat byId:pageId];
}
    
- (void)setCustomMvtTag:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSString *value = [command.arguments objectAtIndex:1];
    
    [WiseTracker setCustomMvtTag:key value:value];
}
    
- (void)setCustomMvtTagById:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSString *value = [command.arguments objectAtIndex:1];
    NSString *pageId = [command.arguments objectAtIndex:2];
    
    [WiseTracker setCustomMvtTag:key value:value byId:pageId];
}
    
- (void)setGoalCustomMvtTag:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSString *value = [command.arguments objectAtIndex:1];
    
    [WiseTracker setGoalCustomMvtTag:key value:value];
}
    
- (void)setGoalCustomMvtTagById:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSString *value = [command.arguments objectAtIndex:1];
    NSString *pageId = [command.arguments objectAtIndex:2];
    
    [WiseTracker setGoalCustomMvtTag:key value:value byId:pageId];
}
    
- (void)setOrderCustomMvtTag:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSString *value = [command.arguments objectAtIndex:1];
    
    [WiseTracker setOrderCustomMvtTag:key value:value];
}
    
- (void)setOrderCustomMvtTagArray:(CDVInvokedUrlCommand*)command {
    NSMutableArray *arrString = [[NSMutableArray alloc] init];
    NSString *key = [command.arguments objectAtIndex:0];
    NSArray *array = [command.arguments objectAtIndex:1];
    
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setOrderCustomMvtTagArray:key value:arrString];
}
    
- (void)setOrderCustomMvtTagById:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSString *value = [command.arguments objectAtIndex:1];
    NSString *pageId = [command.arguments objectAtIndex:2];
    
    [WiseTracker setOrderCustomMvtTag:key value:value byId:pageId];
}
    
- (void)setExhibit:(CDVInvokedUrlCommand*)command {
    NSString *exhibit = [command.arguments objectAtIndex:0];
    
    [WiseTracker setExhibit:exhibit];
}
    
- (void)setOrderNo:(CDVInvokedUrlCommand*)command {
    NSString *orderNo = [command.arguments objectAtIndex:0];
    
    [WiseTracker setOrderNo:orderNo];
}
    
- (void)setOrderNoById:(CDVInvokedUrlCommand*)command {
    NSString *orderNo = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setOrderNo:orderNo byId:pageId];
}
    
- (void)setProduct:(CDVInvokedUrlCommand*)command {
    NSString *pnc = [command.arguments objectAtIndex:0];
    NSString *pncNm = [command.arguments objectAtIndex:1];
    
    [WiseTracker setProduct:pnc name:pncNm];
}
    
- (void)setProductById:(CDVInvokedUrlCommand*)command {
    NSString *pnc = [command.arguments objectAtIndex:0];
    NSString *pncNm = [command.arguments objectAtIndex:1];
    NSString *pageId = [command.arguments objectAtIndex:2];
    
    [WiseTracker setProduct:pnc name:pncNm byId:pageId];
}
    
- (void)setGoalProduct:(CDVInvokedUrlCommand*)command {
    NSString *pnc = [command.arguments objectAtIndex:0];
    
    [WiseTracker setGoalProduct:pnc];
}
    
- (void)setGoalProductById:(CDVInvokedUrlCommand*)command {
    NSString *pnc = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setGoalProduct:pnc byId:pageId];
}
    
- (void)setGoalProductArray:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setGoalProductArray:arrString];
}
    
- (void)setGoalProductArrayById:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setGoalProductArray:arrString byId:pageId];
}
    
- (void)setOrderProduct:(CDVInvokedUrlCommand*)command {
    NSString *pnc = [command.arguments objectAtIndex:0];
    
    [WiseTracker setOrderProduct:pnc];
}
    
- (void)setOrderProductById:(CDVInvokedUrlCommand*)command {
    NSString *pnc = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setOrderProduct:pnc byId:pageId];
}
    
- (void)setOrderProductArray:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setOrderProductArray:arrString];
}
    
- (void)setOrderProductArrayById:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    
    [WiseTracker setOrderProductArray:arrString byId:pageId];
}
    
- (void)setProductCategory:(CDVInvokedUrlCommand*)command {
    NSString *png = [command.arguments objectAtIndex:0];
    NSString *pngNm = [command.arguments objectAtIndex:1];
    
    [WiseTracker setProductCategory:png name:pngNm];
}
    
- (void)setProductCategoryById:(CDVInvokedUrlCommand*)command {
    NSString *png = [command.arguments objectAtIndex:0];
    NSString *pngNm = [command.arguments objectAtIndex:1];
    NSString *pageId = [command.arguments objectAtIndex:2];
    
    [WiseTracker setProductCategory:png name:pngNm byId:pageId];
}
    
- (void)setGoalProductCategory:(CDVInvokedUrlCommand*)command {
    NSString *png = [command.arguments objectAtIndex:0];
    
    [WiseTracker setGoalProductCategory:png];
}
    
- (void)setGoalProductCategoryArray:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setGoalProductCategoryArray:arrString];
}
    
- (void)setGoalProductCategoryArrayById:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setGoalProductCategoryArray:arrString byId:pageId];
}
    
- (void)setOrderProductCategory:(CDVInvokedUrlCommand*)command {
    NSString *png = [command.arguments objectAtIndex:0];
    
    [WiseTracker setOrderProductCategory:png];
}
    
- (void)setOrderProductCategoryById:(CDVInvokedUrlCommand*)command {
    NSString *png = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setOrderProductCategory:png byId:pageId];
}
    
- (void)setOrderProductCategoryArray:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setOrderProductCategoryArray:arrString];
}
    
    
- (void)setOrderProductCategoryArrayById:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setOrderProductCategoryArray:arrString byId:pageId];
}
    
- (void)setProductType:(CDVInvokedUrlCommand*)command {
    NSString *pncTp = [command.arguments objectAtIndex:0];
    
    [WiseTracker setProductType:pncTp];
}
    
- (void)setProductTypeById:(CDVInvokedUrlCommand*)command {
    NSString *pncTp = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setProductType:pncTp byId:pageId];
}
    
- (void)setGoalProductType:(CDVInvokedUrlCommand*)command {
    NSString *pncTp = [command.arguments objectAtIndex:0];
    
    [WiseTracker setGoalProductType:pncTp];
}
    
- (void)setGoalProductTypeById:(CDVInvokedUrlCommand*)command {
    NSString *pncTp = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setGoalProductType:pncTp byId:pageId];
}
    
- (void)setGoalProductTypeArray:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setGoalProductTypeArray:arrString];
}
    
    
- (void)setGoalProductTypeArrayById:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setGoalProductTypeArray:arrString byId:pageId];
}
    
- (void)setOrderProductType:(CDVInvokedUrlCommand*)command {
    NSString *pncTp = [command.arguments objectAtIndex:0];
    
    [WiseTracker setOrderProductType:pncTp];
}
    
- (void)setOrderProductTypeById:(CDVInvokedUrlCommand*)command {
    NSString *pncTp = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setOrderProductType:pncTp byId:pageId];
}
    
- (void)setOrderProductTypeArray:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setOrderProductTypeArray:arrString];
}
    
- (void)setOrderProductTypeArrayById:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    
    [WiseTracker setOrderProductTypeArray:arrString byId:pageId];
}
    
- (void)setOrderAmount:(CDVInvokedUrlCommand*)command {
    NSNumber *amount = [command.arguments objectAtIndex:0];
    
    [WiseTracker setOrderAmount:amount];
}
    
- (void)setOrderAmountById:(CDVInvokedUrlCommand*)command {
    NSInteger amount = [[command.arguments objectAtIndex:0] integerValue];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setOrderAmount:amount byId:pageId];
}
- (void)setOrderAmountArray:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrAmount = [[NSMutableArray alloc] init];
    for(NSObject* obj in command.arguments){
        [arrAmount addObject:obj];
    }
    
    [WiseTracker setOrderAmountArray:arrAmount];
}
    
- (void)setOrderAmountArrayById:(CDVInvokedUrlCommand*)command {
    NSMutableArray* arrAmount = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    for(NSObject* obj in array){
        [arrAmount addObject:obj];
    }
    
    [WiseTracker setOrderAmountArray:arrAmount byId:pageId];
}
    
- (void)setOrderQuantity:(CDVInvokedUrlCommand*)command {
    NSInteger quantity = [[command.arguments objectAtIndex:0] integerValue];
    
    [WiseTracker setOrderQuantity:quantity];
}
    
- (void)setOrderQuantityById:(CDVInvokedUrlCommand*)command {
    NSInteger quantity = [[command.arguments objectAtIndex:0] integerValue];
    NSString *pageId = [command.arguments objectAtIndex:1];
    
    [WiseTracker setOrderQuantity:quantity byId:pageId];
}
    
- (void)setOrderQuantityArray:(CDVInvokedUrlCommand*)command {
    NSMutableArray* quantityArray = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    for(NSObject* obj in array){
        [quantityArray addObject:obj];
    }
    
    [WiseTracker setOrderQuantityArray:quantityArray];
}
    
- (void)setOrderQuantityArrayById:(CDVInvokedUrlCommand*)command {
    NSMutableArray* quantityArray = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:0];
    NSString *pageId = [command.arguments objectAtIndex:1];
    for(NSObject* obj in array){
        [quantityArray addObject:obj];
    }
    
    [WiseTracker setOrderQuantityArray:quantityArray byId:pageId];
}
    
- (void)sendClickData:(CDVInvokedUrlCommand*)command {
    NSString *eventCode = [command.arguments objectAtIndex:0];
    NSString *eventName = [command.arguments objectAtIndex:1];
    
    [WiseTracker sendClickData:eventCode eventName:eventName];
}
    
- (void)setPaymentTypeForOllehTv:(CDVInvokedUrlCommand*)command {
    NSString *mCd = [command.arguments objectAtIndex:0];
    NSString *sCd = [command.arguments objectAtIndex:1];
    
    [WiseTracker setPaymentTypeForOllehTv:mCd sCd:sCd];
}
    
- (void)setOrderConversionData:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSNumber *value = [command.arguments objectAtIndex:1];
    
    [WiseTracker setOrderConversionData:value key:key];
}
    
- (void)setOrderConversionDataById:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSInteger value = [[command.arguments objectAtIndex:1] integerValue];
    NSString *pageId = [command.arguments objectAtIndex:2];
    
    [WiseTracker setOrderConversionData:value key:key byId:pageId];
}
    
- (void)setOrderConversionDataArray:(CDVInvokedUrlCommand*)command {
    NSString *key = [command.arguments objectAtIndex:0];
    NSMutableArray* arrString = [[NSMutableArray alloc] init];
    NSArray* array = [command.arguments objectAtIndex:1];
    for(NSObject* obj in array){
        if([obj isKindOfClass:[NSString class]]){
            [arrString addObject:obj];
        }else if([obj isKindOfClass:[NSNumber class]]){
            [arrString addObject:obj];
        }
    }
    [WiseTracker setOrderConversionDataArray:arrString key:key];
}

- (void)useIkwdWithConversion:(CDVInvokedUrlCommand*)command {
    NSString *value = [command.arguments objectAtIndex:0];
    
    [WiseTracker useIkwdWithConversion:value];
}
    
- (void)useMvt1WithConversion:(CDVInvokedUrlCommand*)command {
    NSString *value = [command.arguments objectAtIndex:0];
    
    [WiseTracker useMvt1WithConversion:value];
}

- (void)useMvt2WithConversion:(CDVInvokedUrlCommand*)command {
    NSString *value = [command.arguments objectAtIndex:0];
    
    [WiseTracker useMvt2WithConversion:value];
}

- (void)useMvt3WithConversion:(CDVInvokedUrlCommand*)command {
    NSString *value = [command.arguments objectAtIndex:0];
    
    [WiseTracker useMvt3WithConversion:value];
}

- (void)setOrderDate:(CDVInvokedUrlCommand*)command {
    NSString *date = [command.arguments objectAtIndex:0];
    
    [WiseTracker setOrderDate:date];
}

- (void)setOrderDateArray:(CDVInvokedUrlCommand*)command {
    NSString *date = [command.arguments objectAtIndex:0];
    NSInteger count = [[command.arguments objectAtIndex:1] integerValue];
    
    [WiseTracker setOrderDateArray:date itemCount:count];
}
    
@end

