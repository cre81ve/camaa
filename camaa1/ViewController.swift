//
//  ViewController.swift
//  camaa1
//
//  Created by CK on 12/2/14.
//  Copyright (c) 2014 ck. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var metricsTable: UITableView!
    var pdata = [MaaMetric]()
    override func viewDidLoad() {
        super.viewDidLoad()
  

        pdata = MaaClient.sharedInstance.getPerformanceData("appid")
        metricsTable.delegate = self
        metricsTable.dataSource = self
        metricsTable.rowHeight = UITableViewAutomaticDimension
        metricsTable.reloadData()
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var tc = tableView.dequeueReusableCellWithIdentifier("maaCell") as MaaCell
        
        var m = pdata[indexPath.row] as MaaMetric
        tc.metricTitle.text = m.metricTitle
        tc.metricUnit.text = m.metricUnit
        tc.metricDescription.text = m.metricDesc
        tc.metricValue.text = m.metricValue
        
     
        return tc
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
      
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }

    @IBAction func showAppsMenu(sender: AnyObject) {
        
        
    }
}

