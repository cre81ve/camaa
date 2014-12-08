//
//  MaaCell.swift
//  camaa1
//
//  Created by CK on 12/2/14.
//  Copyright (c) 2014 ck. All rights reserved.
//

import UIKit

class MaaCell: UITableViewCell {

   
    @IBOutlet weak var _guageView: WMGaugeView!
    @IBOutlet weak var metricTitle: UILabel!
    
    @IBOutlet weak var metricUnit: UILabel!
    @IBOutlet weak var metricValue: UILabel!
    @IBOutlet weak var metricDescription: UILabel!
    
    var guageValue:Float = 10
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupGuage()
        
    }
    
    func addTimer() {
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("guageUpdateTimer"), userInfo: nil, repeats: true)
        

    }
    
    
    func addTimerNoRepeat() {
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("guageUpdateTimerVal"), userInfo: nil, repeats: false)
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func RGB(red:CGFloat,blue:CGFloat,green:CGFloat) ->UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 0)
    }
    
    func setupGuage(){
        _guageView.maxValue = 240.0;
        _guageView.showRangeLabels = true;
        _guageView.rangeValues = [50,90,130,240.0];
        _guageView.rangeColors = [ RGB(232, blue: 111, green: 33),RGB(232, blue: 231, green: 33),RGB(27, blue: 202, green: 33),RGB(231, blue: 32, green: 43)];
        _guageView.rangeLabels = [ "VERY LOW","LOW","OK","OVER FILL"];
        _guageView.unitOfMeasurement = "psi";
        _guageView.showUnitOfMeasurement = true;
        _guageView.scaleDivisionsWidth = 0.8;
        _guageView.scaleSubdivisionsWidth = 0.6;
        _guageView.rangeLabelsFontColor = UIColor.whiteColor()
        _guageView.rangeLabelsWidth = 0.4;
        _guageView.rangeLabelsFont = UIFont(name: "Helvetica", size: 0.4)
        _guageView.showScaleShadow = true;
        _guageView.scaleFont = UIFont(name:"AvenirNext-UltraLight" ,size:0.065);
        _guageView.scalesubdivisionsaligment = WMGaugeViewSubdivisionsAlignmentCenter;
        _guageView.scaleSubdivisionsWidth = 0.002;
        _guageView.scaleSubdivisionsLength = 0.04;
        _guageView.scaleDivisionsWidth = 0.007;
        _guageView.scaleDivisionsLength = 0.07;
        _guageView.needleStyle = WMGaugeViewNeedleStyleFlatThin;
        _guageView.needleWidth = 0.012;
        _guageView.needleHeight = 0.4;
        _guageView.needleScrewStyle = WMGaugeViewNeedleScrewStylePlain;
        _guageView.needleScrewRadius = 0.05;
        _guageView.value = guageValue
    }
    
    func guageUpdateTimer() {
        _guageView.value = Float(rand())%_guageView.maxValue
        metricValue.text = String(Int(_guageView.value))
    }
    
    func guageUpdateTimerVal() {
        _guageView.value = guageValue
        metricValue.text = String(Int(guageValue))
    }

}
