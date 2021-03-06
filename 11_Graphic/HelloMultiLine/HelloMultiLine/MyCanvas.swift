//********************************************************************
//********************************************************************
//**************************** Multi Line ****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() //取得繪圖情景
        CGContextMoveToPoint(context, 50, 50)       //移到線段的第一個點
        CGContextAddLineToPoint(context, 250, 250)  //畫出一條線
        
        CGContextMoveToPoint(context, 250, 50) //移到第二條線段的第一個點
        CGContextAddLineToPoint(context, 50, 250)  //再畫出一條線
        
        CGContextSetLineWidth(context, 15)          //設定線段寬度
        UIColor.redColor().set()                    //設定線段顏色
        CGContextStrokePath(context)                //畫出線段
    }
}

