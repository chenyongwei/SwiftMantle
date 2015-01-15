//
//  EFTMantleModel.swift
//  SwiftMantle
//
//  Created by Yongwei.Chen on 1/15/15.
//  Copyright (c) 2015 KW. All rights reserved.
//


import Foundation

class BaseMantleModel: MTLModel, MTLJSONSerializing
{
    var id:NSString?
    
    override init() {
        super.init()
    }
    
    override init(dictionary dictionaryValue: [NSObject : AnyObject]!, error: NSErrorPointer) {
        super.init(dictionary: dictionaryValue, error: error)
    }
    
    class func JSONKeyPathsByPropertyKey() -> [NSObject : AnyObject]!
    {
        return [:]
    }
    
}

