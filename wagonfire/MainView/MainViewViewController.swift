//
//  MainViewViewController.swift
//  wagonfire
//
//  Created by mpc on 10/28/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import UIKit
import SnapKit

class MainViewViewController: UIViewController {

    //MARK: - IBOutlets
    
    @IBOutlet weak var backgroundView : UIView!
    @IBOutlet weak var fireLogoImage  : UIImageView!
    @IBOutlet weak var wagonTextImage : UIImageView!
    @IBOutlet weak var fireTextImage  : UIImageView!
    
    //MARK: - Custom methods
    func constraints() {
        backgroundView.frame = CGRectMake(0, 0, super.view.frame.width, super.view.frame.height)
        
//        fireLogoImage.snp_makeConstraints { (make) -> Void in
//            make.top.equalTo(backgroundView.snp_top)
//            make.bottom.equalTo(backgroundView.snp_bottom)
//            make.height.equalTo(backgroundView.snp_height)
//            make.width.equalTo(backgroundView.snp_width)
//        }
    }
    
    
    //MARK: - Internal methods
    override func viewDidLoad() {
        super.viewDidLoad()

        constraints()
        
        let seconds = 2.0
        let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
            self.wagonTextImage.startRotating(RIGHT)
            self.fireTextImage.startRotating(LEFT)
        })
        
        
        let segueTime = 4.0
        let segueDelay = segueTime * Double(NSEC_PER_SEC)
        let segueDispatch = dispatch_time(DISPATCH_TIME_NOW, Int64(segueDelay))
        dispatch_after(segueDispatch, dispatch_get_main_queue(), {
            self.performSegueWithIdentifier("MainToSegueIdentifier", sender: self)
        })
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        
    }
}
