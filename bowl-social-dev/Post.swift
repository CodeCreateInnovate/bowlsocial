//
//  Post.swift
//  bowl-social-dev
//
//  Created by ERICK TRUONG on 2/25/16.
//  Copyright © 2016 Code Create Innovate. All rights reserved.
//

import Foundation

class Post {
    private var _postDescription: String!
    private var _imageURL: String?
    private var _likes: Int!
    private var _username: String!
    private var _postKey: String!

    var postDescription: String {
        return _postDescription
    }
    
    var imageUrl: String? {
        return _imageURL
    }
    
    var likes: Int {
        return _likes
    }
    
    var username: String {
        return _username
    }
    
    init(description: String, imageUrl: String?, username: String) {
        self._postDescription = description
        self._imageURL = imageUrl
        self._username = username
    }
    
    init(postKey: String, dictionary: Dictionary<String, AnyObject>) {
        self._postKey = postKey
        
        if let likes = dictionary["likes"] as? Int {
            self._likes = likes
        }
        
        if let imgUrl = dictionary["imageUrl"] as? String {
            self._imageURL = imgUrl
        }
        
        if let desc = dictionary["description"] as? String {
            self._postDescription = desc
        }
    }
}
