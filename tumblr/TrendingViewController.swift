//
//  TrendingViewController.swift
//  tumblr
//
//  Created by Nathan Visconti on 10/11/15.
//  Copyright © 2015 Nathan Visconti. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var trendingView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.contentSize = trendingView.image!.size

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