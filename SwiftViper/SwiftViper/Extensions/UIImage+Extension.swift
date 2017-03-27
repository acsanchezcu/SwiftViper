//
//  UIImage+Extension.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright © 2017 acsanchezcu. All rights reserved.
//

import UIKit

public extension UIImage {
    
    func imageWithSize(size: CGSize) -> UIImage {
        
        let widthRatio: CGFloat = size.width / self.size.width
        let heightRatio: CGFloat = size.height / self.size.height
        
        var newSize: CGSize?
        
        if widthRatio < heightRatio {
            newSize = CGSize.init(width: self.size.width*heightRatio, height: self.size.height*heightRatio)
        }
        else {
            newSize = CGSize.init(width: self.size.width*widthRatio, height: self.size.height*widthRatio)
        }
        
        UIGraphicsBeginImageContextWithOptions(newSize!, false, 0.0)
        self.draw(in: CGRect.init(x: 0, y: 0, width: (newSize?.width)!, height: (newSize?.height)!))
        let newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return newImage
    }
    
}
