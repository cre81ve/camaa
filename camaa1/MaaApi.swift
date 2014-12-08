//
//  MaaApi.swift
//  camaa1
//
//  Created by CK on 12/2/14.
//  Copyright (c) 2014 ck. All rights reserved.
//

import UIKit


class MaaClient:NSObject {
    
    let server = "http://ca-maa:8080/mdo/v1"
    let performanceUri = "/performance"
    
    
    
    class var sharedInstance: MaaClient{
        struct Static {
            static let instance = MaaClient()
            
        }
        return Static.instance
    }
    
    func getPerformanceData(app:String)->[MaaMetric] {
        var metrics = [
          MaaMetric(title: "Average MPG", desc: "Average MPG of the Car", value: "32", unit: "mpg"),
          MaaMetric(title: "Battery Voltage", desc: "Battery Voltage of the Car", value: "22", unit: "in ms"),
          MaaMetric(title: "Http Errors in App", desc: "All the http errors , averaged over time", value: "312", unit: "number of errors"),
          MaaMetric(title: "Crashes of the App", desc: "Application Crashes over time", value: "22", unit: "crashes in number"),
          MaaMetric(title: "Wait times", desc: "Timeouts of all actions in the app", value: "11", unit: "time out entries")
        ]
        
        return metrics
    }
}
