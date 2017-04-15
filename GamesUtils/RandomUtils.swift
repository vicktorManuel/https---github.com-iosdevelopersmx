//
//  RandomUtils.swift
//  
//
//  Created by victor Franco on 10/03/17.
//  
//

import Foundation
import CoreGraphics

extension CGFloat {
    //Devuelve un número aleatorio entre 0 y 1
    static func random() -> CGFloat {
        return CGFloat(Float(arc4random())/Float(UInt32.max))
    }
    //Devuelve un numero aleatorio entre el min y el max, haciendo el truco de linealizar matemáticamente
    static func random(min: CGFloat, max:CGFloat) -> CGFloat {
        assert(min < max)
        return CGFloat.random() * (max-min) + min
    }
}
