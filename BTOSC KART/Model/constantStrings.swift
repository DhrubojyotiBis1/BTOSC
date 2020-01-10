//
//  constantStrings.swift
//  BAZARO
//
//  Created by Dhrubojyoti on 08/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import Foundation

struct smsGateWayConstants {
    static let authenticationKey = "308673A7RsGaro625df870d5"
    static let reciveType = "text"
    static let heading = "PANTRY"
    static let otpMessage = "##Dear Customer,\n734399 is your one time password (OTP). Please enter the OTP to proceed.\nThank you,\nTeam Jio.##"
    static let expiryTime = "1"
    static let smsSendSuccessType = "success"
    static let transactionMassage = "You order has been recived"
    static let promotionMassage = "This is a promotion massage"
    static let transactionRoute = "4"
    static let promotionRoute = "1"
    static let countryCode = "91"
    static let international = "0"
    static let usa = "1"
    static let lengthOfOtp = "4"
}

struct smsGateWay {
    static let otp = "otp"
    static let phoneNumber = "mobile"
    static let authenticationKey = "authkey"
    static let reciveType = "retrytype"
    static let headingOfTheSended = "sender"
    static let message = "message"
    static let otpExpiryTimeing = "otp_expiry"
    static let type = "type"
    static let route = "route"
    static let countryToSendMassage = "country"
    static let phoneNumberForSendingSms = "mobiles"
    static let otpLength = "otp_length"
}
