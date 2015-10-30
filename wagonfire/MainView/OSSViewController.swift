//
//  OSSViewController.swift
//  wagonfire
//
//  Created by mpc on 10/29/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import UIKit
import SnapKit

class OSSViewController: UIViewController {

    
    @IBOutlet weak var backView      : UIView!
    @IBOutlet weak var ossLogo       : UIImageView!
    @IBOutlet weak var openTextImage : UIImageView!
    @IBOutlet weak var sourceText    : UIImageView!
    
    func constraints() {
        backView.frame = CGRectMake(0, 0, super.view.frame.width, super.view.frame.height)
        
        ossLogo.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(backView.snp_left)
            make.right.equalTo(backView.snp_right)
            make.width.equalTo(backView.snp_width)
            //make.width.equalTo(super.view.frame.width)
        }
        
        openTextImage.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(backView.snp_width)
            make.height.equalTo(59)
            make.top.equalTo(backView.snp_top).offset(200)
        }
        
        sourceText.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(backView.snp_width)
            make.height.equalTo(59)
            make.top.equalTo(openTextImage.snp_bottom).offset(40)
        }
    }
    
    
    func animateDisplay() {
        let seconds = 2.0
        let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        
        let topMargin  = self.backView.frame.origin.y
        let ossLogoTop = self.ossLogo.frame.origin.y
        
        print("topMargin: \(topMargin)  ossLogoTop: \(ossLogoTop)")
        
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
            UIView.animateWithDuration(0.7, animations: { () -> Void in
                self.ossLogo.frame.origin.y = 0 //-= self.ossLogo.frame.origin.y
                print("top = \(self.ossLogo.frame.origin.y)")
                }, completion: { (success) -> Void in
                    
            })
        })
        
        
        let animateSource = 6.0
        let sourceDelay   = seconds * Double(NSEC_PER_SEC)
        let sourceTime    = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
     
        dispatch_after(sourceTime, dispatch_get_main_queue(), {
            UIView.animateWithDuration(1.0, animations: { () -> Void in
                self.openTextImage.alpha = 1
                print("alpha = \(self.openTextImage.alpha)")
                }, completion: { (success) -> Void in
                    
            })
        })
        
        let openSource = 6.00
        let openeDelay = seconds * Double(NSEC_PER_SEC)
        let openTime   = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        
        dispatch_after(openTime, dispatch_get_main_queue(), {
            UIView.animateWithDuration(1.0, animations: { () -> Void in
                self.sourceText.alpha = 1
                print("alpha = \(self.sourceText.alpha)")
                }, completion: { (success) -> Void in
                    
            })
        })
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        constraints()
        animateDisplay()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
