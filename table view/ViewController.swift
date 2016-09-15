//
//  ViewController.swift
//  table view
//
//  Created by Shashank Ranjan on 7/2/16.
//  Copyright © 2016 Shashank Ranjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    let subject = ["ram","shyam","mohan","kapil","rohit","suman","radha","modi","rahul","shail","anuj","kk","rohan","rohit"]
    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
    return subject.count
    
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    
    {
         let cell = tableView.dequeueReusableCellWithIdentifier("done", forIndexPath: indexPath)
        cell.textLabel?.text = subject[indexPath.row]
        cell.textLabel?.backgroundColor = UIColor.clearColor()
        cell.contentView.backgroundColor = UIColor.randomcolor()
        return (cell)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension UIColor {
    
   static func randomcolor() -> UIColor {
        
        let randomBlue = drand48()
        let randomRed = drand48()
        let randomGreen = drand48()
        let randomAlpha = drand48()
        
        
        let color = UIColor(red: CGFloat(randomRed), green: CGFloat(randomGreen), blue: CGFloat(randomBlue), alpha: CGFloat(randomAlpha))
        return color
        
    }
    
    
}


