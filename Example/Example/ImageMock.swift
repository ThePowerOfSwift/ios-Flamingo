//
//  ImageMock.swift
//  Example
//
//  Created by Георгий Касапиди on 16.05.16.
//  Copyright © 2016 ELN. All rights reserved.
//

import Foundation
import Flamingo

struct ImageMock: NetworkRequestMock {
    
    var responseDelay: TimeInterval {
        return 2
    }
    
    var mimeType: String {
        return "image/jpeg"
    }
    
    func responseData() -> Data? {
        let image = UIImage(named: "demo_image.jpeg")!
        
        return UIImagePNGRepresentation(image)!
    }
}
