//
//  PageModel.swift
//  Pinch
//
//  Created by Oraz Atakishiyev on 09.01.2023.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
