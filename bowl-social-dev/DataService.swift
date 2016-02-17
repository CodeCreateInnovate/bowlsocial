//
//  DataService.swift
//  bowl-social-dev
//
//  Created by ERICK TRUONG on 2/13/16.
//  Copyright © 2016 Code Create Innovate. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = Firebase(url: "https://bowl-social.firebaseio.com")
    
    var REF_BASE: Firebase {
        return _REF_BASE
    }
}