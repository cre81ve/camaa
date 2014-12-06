//
//  AppsViewController.swift
//  camaa1
//
//  Created by CK on 12/3/14.
//  Copyright (c) 2014 ck. All rights reserved.
//

import UIKit

class AppsViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var appsTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appsTable.delegate = self
        appsTable.dataSource = self
        appsTable.rowHeight = UITableViewAutomaticDimension
        appsTable.reloadData()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var tc = tableView.dequeueReusableCellWithIdentifier("appCell") as AppCellTableViewCell
        
        return tc
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
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
