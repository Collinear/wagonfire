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

    
    @IBOutlet weak var backView : UIView!
    @IBOutlet weak var ossLogo  : UIImageView!
    

    func constraints() {
        backView.frame = CGRectMake(0, 0, super.view.frame.width, super.view.frame.height)
        
        
        ossLogo.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(backView.snp_left)
            make.right.equalTo(backView.snp_right)
            make.width.equalTo(backView.snp_width)
            make.height.equalTo(backView.snp_height)
            make.bottom.equalTo(backView.snp_bottom)
        }
    }
    
    
    func animateDisplay() {
        let seconds = 2.0
        let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        
        let topMargin  = self.backView.frame.origin.y
        var ossLogoTop = self.ossLogo.frame.origin.y
        
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {

            
            
        })
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
