//
//  ComposeViewController.swift
//  tumblr
//
//  Created by Nathan Visconti on 10/11/15.
//  Copyright © 2015 Nathan Visconti. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButto: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
//    var originaly1 = 700
//    var newy1 = 100
//    var newy2 = 200
//    var exity = -200
//    
//    override func viewDidAppear() {
//        UIView.animateWithDuration(20) { () -> Void in
//            self.textButton.center.y = 145
//        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onNevermind(sender: AnyObject) {
        dismissViewControllerAnimated(true) { () -> Void in
         
            
            
        }  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
