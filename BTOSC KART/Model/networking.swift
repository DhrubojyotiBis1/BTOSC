//
//  networking.swift
//  BAZARO
//
//  Created by Dhrubojyoti on 08/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class networking {
    
    //For requesting OTP
    func getOtp(withPhoneNumber phoneNumber:String){
        //request failing if massage is included in parameter
        let pram = [smsGateWay.authenticationKey:smsGateWayConstants.authenticationKey,smsGateWay.phoneNumber : phoneNumber,smsGateWay.otpExpiryTimeing:smsGateWayConstants.expiryTime,smsGateWay.headingOfTheSended:smsGateWayConstants.heading,smsGateWay.otpLength:smsGateWayConstants.lengthOfOtp]
        //trying to do networking for varification
        Alamofire.request(urls.getOtpURL,method: .get ,parameters : pram).responseJSON { (response) in
            if response.result.isSuccess{
              //networking done
                let userJSON : JSON = JSON(response.result.value!)
                print(userJSON)
                if(userJSON[smsGateWay.type].string! == smsGateWayConstants.smsSendSuccessType){
                    //take to the next view controller for otp Varification
                    //completion(true,userJSON[smsGateWay.type].string!)
                    print("OTP sended")
                    print(userJSON[smsGateWay.type])
                }else{
                    //failed to send otp
                    //completion(false,userJSON[smsGateWay.type].string!)
                    print("failed to send OTP")
                    print(response.error?.localizedDescription)
                }
                
            }else{
                //fail to do networking
                //completion(false,"Network Error")
                print("failed to send OTP , networking issues")
                print(response.error?.localizedDescription as Any)
            }
        }
    }
    
    
    //For resending the same otp
    func resendOtp(forPhoneNumber phoneNumber:String,completion:@escaping (_ result:Bool,_ token:Int)->()){
        let pram = [smsGateWay.authenticationKey:smsGateWayConstants.authenticationKey,smsGateWay.phoneNumber : phoneNumber,smsGateWay.reciveType:smsGateWayConstants.reciveType]
        //trying to do networking for varification
        Alamofire.request(urls.reSendOtpURL,method: .get ,parameters : pram).responseJSON { (response) in
            if response.result.isSuccess{
              //networking done
                let userJSON : JSON = JSON(response.result.value!)
                if(userJSON[smsGateWay.type].string! == smsGateWayConstants.smsSendSuccessType){
                    //otp varification uccess
                    //take to the next view controller
                    print(userJSON)
                    completion(true,1)
                }else{
                    //failed to varify otp
                    print(userJSON[smsGateWay.type])
                    completion(false,2)
                }
            }else{
                //fail to do networking
                print(response.error?.localizedDescription as Any)
                completion(false,0)
            }
        }
    }
    
    //For otp varification
    func otpVarification(withOtp otp:String,andPhoneNumber phoneNumber:String,completion:@escaping (_ result:Bool,_ type:String)->()){
        let pram = [smsGateWay.authenticationKey:smsGateWayConstants.authenticationKey,smsGateWay.phoneNumber : phoneNumber,smsGateWay.otp:otp]
        //trying to do networking for varification
        Alamofire.request(urls.otpVarificationURL,method: .get ,parameters : pram).responseJSON { (response) in
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
        }
    }
    
    func getSellerDetails(){
        Alamofire.request(urls.sellerDetailsURL,method: .get).responseJSON { (response) in
            print(response.result.value!)
        }
    }
    
}
