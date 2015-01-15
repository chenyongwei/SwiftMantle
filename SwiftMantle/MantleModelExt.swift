//
//  MantleModelExt.swift
//  SwiftMantle
//
//  Created by Yongwei.Chen on 1/15/15.
//  Copyright (c) 2015 KW. All rights reserved.
//

import Foundation

extension BaseMantleModel {
    
    func toDictionary() -> NSDictionary? {
        var dict = MTLJSONAdapter.JSONDictionaryFromModel(self)
        return dict
    }
    
    func toData() -> NSData? {
        var dict = self.toDictionary()
        var data = NSJSONSerialization.dataWithJSONObject(dict!, options: NSJSONWritingOptions.PrettyPrinted, error: nil)
        return data
    }
    
    func toString() -> NSString {
        var data = self.toData()
        var str = NSString(data: data!, encoding: NSUTF8StringEncoding)
        return str!
    }
}