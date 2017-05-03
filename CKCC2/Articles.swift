//
//  Articles.swift
//  CKCC2
//
//  Created by KimhounKP on 4/26/17.
//  Copyright © 2017 KimhounKP. All rights reserved.
//

import Foundation
class Articles {
    var title:String!
    var imageUrl:String!
    var date:String!
    init(title:String, date:String, imageUrl:String ) {
        self.title = title
        self.imageUrl = imageUrl
        self.date = date
    }
}
