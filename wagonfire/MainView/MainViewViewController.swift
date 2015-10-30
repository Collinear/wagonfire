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
    @IBOutlet weak var backImage      : UIImageView!
    @IBOutlet weak var frontImage     : UIImageView!
    
    
    //MARK: - Custom methods

    
    
    //MARK: - Internal methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let seconds = 2.0
        let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
            if let _ = self.wagonTextImage {
                self.wagonTextImage.startRotating(RIGHT)
            }
            
            if let _ = self.fireTextImage {
                self.fireTextImage.startRotating(LEFT)
                
                let segueTime = 4.0
                let segueDelay = segueTime * Double(NSEC_PER_SEC)
                let segueDispatch = dispatch_time(DISPATCH_TIME_NOW, Int64(segueDelay))
                dispatch_after(segueDispatch, dispatch_get_main_queue(), {
                    self.performSegueWithIdentifier("MainToSegueIdentifier", sender: self)
                })
            }
        })
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

}
