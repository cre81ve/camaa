//
//  MaaMetric.swift
//  camaa1
//
//  Created by CK on 12/2/14.
//  Copyright (c) 2014 ck. All rights reserved.
//

import UIKit


class MaaMetric:NSObject {
    
    var metricTitle:String = ""
    var metricDesc:String = ""
    var metricValue:String = ""
    var metricUnit:String = ""
    
    
    init(title:String,desc:String,value:String,unit:String) {
        metricTitle = title
        metricDesc = desc
        metricValue = value
        metricUnit = unit
    }

}
