//
//  TabBarViewController.swift
//  tumblr
//
//  Created by Nathan Visconti on 10/11/15.
//  Copyright © 2015 Nathan Visconti. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var trendingViewController: UIViewController!
    var accountViewController: UIViewController!
//    var composeViewController: UIViewController!
    
    @IBOutlet weak var contentViewController: UIView!
    @IBOutlet weak var composeButton: UIButton!
    

    @IBOutlet weak var contentView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var stroyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        homeViewController = stroyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        searchViewController = stroyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        
        trendingViewController = stroyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        accountViewController = stroyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        
//        composeViewController = stroyboard.instantiateViewControllerWithIdentifier("ComposeViewController")

        // Do any additional setup after loading the view.
    }

    var previousButton: UIButton!
    var currentViewController: UIViewController!
  
    
    
    @IBAction func onHomeButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
            
        }
        
        
        if previousButton != nil {
            previousButton.selected = false
        }
        
        
        button.selected = true
        
        addChildViewController(homeViewController)
        contentView.addSubview(homeViewController.view)
        homeViewController.didMoveToParentViewController(self)
        
        homeViewController.view.frame = contentView.bounds
        previousButton = button
        currentViewController = homeViewController
        
        
    }
    
    @IBAction func onSearchButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
            
        }
        
        
        if previousButton != nil {
            previousButton.selected = false
        }
        
        previousButton.selected = false
        button.selected = true
        
        addChildViewController(searchViewController)
        contentView.addSubview(searchViewController.view)
        didMoveToParentViewController(self)
        
        searchViewController.view.frame = contentView.bounds
        previousButton = button
        currentViewController = searchViewController
    }
    
//    @IBAction func onComposeButton(sender: UIButton) {
//        performSegueWithIdentifier("composeSegue", sender: self)
//    }

    
    
    @IBAction func onAccountButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
            
        }
        
        
        if previousButton != nil {
            previousButton.selected = false
        }
        previousButton.selected = false
        button.selected = true
        
        addChildViewController(accountViewController)
        contentView.addSubview(accountViewController.view)
        didMoveToParentViewController(self)
        accountViewController.view.frame = contentView.bounds
        previousButton = button
        currentViewController = accountViewController
    }
    
    @IBAction func onTrendingButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
            
        }
        
        if previousButton != nil {
            previousButton.selected = false
        }
        previousButton.selected = false
        button.selected = true
        
        addChildViewController(trendingViewController)
        contentView.addSubview(trendingViewController.view)
        didMoveToParentViewController(self)
        trendingViewController.view.frame = contentView.bounds
        previousButton = button
        currentViewController = trendingViewController
    }
    

    @IBAction func onComposeButton(sender: UIButton) {
        performSegueWithIdentifier("composeSegue", sender: self)
        
        
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
