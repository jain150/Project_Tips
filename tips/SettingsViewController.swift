//
//  SettingsViewController.swift
//  tips
//
//  Created by Arnav Jain on 12/13/15.
//  Copyright © 2015 Arnav Jain. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController {
    
    
    
    @IBOutlet weak var tipValuesSegmentControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let tipIndex = getDefaultTip()
        
        
        
        tipValuesSegmentControl.selectedSegmentIndex = tipIndex
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    @IBAction func SegmentSelectionChanged(sender: UISegmentedControl) {
        
        
        
        saveDefaultTip(sender.selectedSegmentIndex)
        
    }
    
    
    
    func saveDefaultTip(tip: Int)
        
    {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setInteger(tip, forKey: "tipIndex")
        
        defaults.synchronize()
        
    }
    
    
    
    func getDefaultTip()->Int
        
    {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        let tipIndex = defaults.integerForKey("tipIndex")
        
        return tipIndex
        
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
