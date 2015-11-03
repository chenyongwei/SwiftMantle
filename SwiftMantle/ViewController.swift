//
//  ViewController.swift
//  SwiftMantle
//
//  Created by Yongwei.Chen on 6/4/14.
//  Copyright (c) 2014 KW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertToMantleObject(sender: UIButton) {
        var jsonPath:NSString = NSBundle.mainBundle().resourcePath!.stringByAppendingString("/data.json")
        var jsonData:NSData = NSData(contentsOfFile: jsonPath.stringByAppendingString(""))!
        var jsonDictionary:NSDictionary =  (try! NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.AllowFragments)) as! NSDictionary
        var exampleModel = (try! MTLJSONAdapter.modelOfClass(ExampleModel.self, fromJSONDictionary: jsonDictionary as! [NSObject : AnyObject] as [NSObject : AnyObject])) as! ExampleModel
        var exampleModelStr = exampleModel.toString()
        NSLog("%@", exampleModelStr)
    }

}

