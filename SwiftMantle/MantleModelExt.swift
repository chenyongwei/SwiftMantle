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
        let dict = MTLJSONAdapter.JSONDictionaryFromModel(self)
        return dict
    }
    
    func toData() -> NSData? {
        let dict = self.toDictionary()
        let data = try? NSJSONSerialization.dataWithJSONObject(dict!, options: NSJSONWritingOptions.PrettyPrinted)
        return data
    }
    
    func toString() -> NSString {
        let data = self.toData()
        let str = NSString(data: data!, encoding: NSUTF8StringEncoding)
        return str!
    }
}