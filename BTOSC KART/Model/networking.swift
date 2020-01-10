//
//  networking.swift
//  BAZARO
//
//  Created by Dhrubojyoti on 08/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import Foundation
//import Alamofire

class networking {
    
    
    func otpVarification(withOtp otp:String,andPhoneNumber phoneNumber:String,completion:@escaping (_ result:Bool,_ type:String)->()){
        let pram = [smsGateWay.authenticationKey:smsGateWayConstants.authenticationKey,smsGateWay.phoneNumber : phoneNumber,smsGateWay.otp:otp]
        completion(true,"Done")
        //trying to do networking for varification
        /*Alamofire.request(url.varifyOtpURL,method: .get ,parameters : pram).responseJSON { (response) in
            if response.result.isSuccess{
              //networking done
                let userJSON : JSON = JSON(response.result.value!)
                print(userJSON)
                if(userJSON[smsGateWay.type].string! == smsGateWayConstants.smsSendSuccessType){
                    //otp varification uccess
                    //take to the next view controller
                    completion(true,userJSON[smsGateWay.type].string!)
                }else{
                    //failed to varify otp
                    completion(false,userJSON["message"].string!)
                }
            }else{
                //fail to do networking
                print(response.error?.localizedDescription as Any)
                completion(false,"Network Error")
            }
        }*/
    }
    
}
