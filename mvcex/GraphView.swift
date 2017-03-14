//
//  GraphView.swift
//  cpsc411-as3
//
//  Created by CampusUser on 3/13/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import UIKit

//modifys the class, changes for entire app
extension CGContext {
    //want hexinput
    func setFillColor(_ hex:Int) {
        //mask different values of hex code
        // 0xFF0000 - RED
        // 0x00FF00 - GREEN
        // 0x0000FF - BLUE
        
        let redColor:CGFloat = CGFloat((hex >> 16) & 0xFF) / 255.0//0xFF may be redundant?
        let greenColor:CGFloat = CGFloat((hex >> 8) & 0xFF) / 255.0
        let blueColor:CGFloat = CGFloat(hex & 0xFF) / 255.0
        setFillColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }
}

class GraphView: UIView {
    
    //let CalcData: DiscountCalc = DiscountCalc.shared
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        //CG prefix is like OPENGLprefix stuff
        let context:CGContext = UIGraphicsGetCurrentContext()!
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        let paddingGuide:CGFloat = 16.0
        let leftGuide:CGFloat = paddingGuide
        let rightGuide:CGFloat = screenWidth - paddingGuide
        let topGuide:CGFloat = 64.0 + paddingGuide //80
        let bottomGuide:CGFloat = screenHeight - paddingGuide
        
        //context.setFillColor(red: 0.0, green: 1.0, blue: 0.5, alpha: 1.0)
        context.setFillColor(0xFC3593)
        
        //these values are all in pts not px
        //draw rect
        context.fill(CGRect(x:leftGuide,y:topGuide,width:screenWidth - (leftGuide+rightGuide),height:screenHeight - (topGuide+bottomGuide)))
        context.fill(CGRect(x:130,y:260,width:100,height:200))
        //draw text
        let myText = "Cheese on Tato Tavern"
        let subText = "Coric City"
        
        //NS is NextStep
        //Text Attributes
        let textAttributes = [
            NSFontAttributeName: UIFont(name:"Helvetica Bold", size: 16.0)!,
            NSForegroundColorAttributeName: UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        ]
        
        myText.draw(at: CGPoint(x: leftGuide + paddingGuide, y:topGuide + paddingGuide),
                    withAttributes: textAttributes)
        subText.draw(at: CGPoint(x: leftGuide + paddingGuide, y:topGuide + (paddingGuide*2)))
    }
    
    
}
