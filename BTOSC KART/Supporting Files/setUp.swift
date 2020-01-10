//
//  setUp.swift
//  BAZARO
//
//  Created by Dhrubojyoti on 07/01/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

public class setUp{
    
    public func makeCardView(forView view:UIView,withShadowHight shadowHight:Double,shadowWidth:Double,shadowOpacity:Float,shadowRadius:CGFloat){
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: shadowWidth, height: shadowHight)
        view.layer.shadowOpacity = shadowOpacity
        view.layer.shadowRadius = shadowRadius
    }
    
    public func makeCardView(forButton button:UIButton ,withShadowHight shadowHight:Double,shadowWidth:Double,shadowOpacity:Float,shadowRadius:CGFloat,cornerRadius:CGFloat){
        
        button.layer.masksToBounds = false
        button.layer.shadowColor = UIColor.gray.cgColor
        button.layer.shadowOffset = CGSize(width: shadowWidth, height: shadowHight)
        button.layer.shadowOpacity = shadowOpacity
        button.layer.shadowRadius = shadowRadius
        button.layer.cornerRadius = cornerRadius
        
    }
}
