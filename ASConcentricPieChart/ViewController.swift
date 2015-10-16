//
//  ViewController.swift
//  ASConcentricPieChart
//
//  Created by Amit kumar Swami on 16/10/15.
//  Copyright © 2015 Aks. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newItems = [ASPieChartDataItem(fromValue: 30, color: UIColor.brownColor(), textDescription: "Google"),
            ASPieChartDataItem(fromValue: 40, color: UIColor.orangeColor(), textDescription: "Apple"),
            ASPieChartDataItem(fromValue: 10, color: UIColor.yellowColor(), textDescription: "Microsoft"),
            ASPieChartDataItem(fromValue: 15, color: UIColor.blueColor(), textDescription: "Cisco"),
            ASPieChartDataItem(fromValue: 5, color: UIColor.redColor(), textDescription: "Yolo")]
        
        let newItems1 = [ASPieChartDataItem(fromValue: 50, color: UIColor.lightGrayColor(),textDescription: "India"),
            ASPieChartDataItem(fromValue: 10, color: UIColor.greenColor(), textDescription: "Pak"),
            ASPieChartDataItem(fromValue: 10, color: UIColor.purpleColor(), textDescription: "USA"),
            ASPieChartDataItem(fromValue: 25, color: UIColor.greenColor(), textDescription: "Russia")]
        
        let circles = [ASPieChartCircle(withInnerRadius: 50, thickness: 40, dataItems: newItems), ASPieChartCircle(withInnerRadius: 100, thickness: 20, dataItems: newItems1)]
        let newPieChart = ASPieChart(fromFrame: CGRectMake(100, 300, 200, 200), circles:circles)
        newPieChart.strokeChart()
        
        view.addSubview(newPieChart)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


