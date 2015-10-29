//
//  MainViewViewController.swift
//  wagonfire
//
//  Created by mpc on 10/28/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import UIKit

class MainViewViewController: UIViewController {

    //MARK: - IBOutlets
    
    @IBOutlet weak var wagonView : UIImageView!
    @IBOutlet weak var fiewView  : UIImageView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let seconds = 4.0
        let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
        var dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
            self.wagonView.startAnimating()
        })
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
