//
//  MathUtils.swift
//  
//
//  Created by victor Franco on 03/03/17.
//  
//

import Foundation
import CoreGraphics


//Funncion que de dos datos los sume

func + (firstPoint: CGPoint, secondPoint: CGPoint ) -> CGPoint{
    return CGPoint(x: firstPoint.x + secondPoint.x, y: firstPoint.y + secondPoint.y )
}
func += ( firstPoint: inout CGPoint, secondPoint:CGPoint) {
    firstPoint = firstPoint + secondPoint
}
func - (firstPoint: CGPoint, secondPoint: CGPoint ) -> CGPoint{
    return CGPoint(x: firstPoint.x - secondPoint.x, y: firstPoint.y - secondPoint.y )
}
func -= ( firstPoint: inout CGPoint, secondPoint:CGPoint) {
    firstPoint = firstPoint - secondPoint
}
func * (firstPoint: CGPoint, secondPoint: CGPoint ) -> CGPoint{
    return CGPoint(x: firstPoint.x * secondPoint.x, y: firstPoint.y * secondPoint.y )
}
func *= ( firstPoint: inout CGPoint, secondPoint:CGPoint) {
    firstPoint = firstPoint * secondPoint
}

func * (point: CGPoint, scalar:CGFloat ) -> CGPoint{
    return CGPoint(x: point.x * scalar, y: point.y * scalar )
}
func *= ( point: inout CGPoint, scalar:CGFloat) {
    point = point * scalar
}

func / (firstPoint: CGPoint, secondPoint: CGPoint ) -> CGPoint{
    return CGPoint(x: firstPoint.x / secondPoint.x, y: firstPoint.y / secondPoint.y )
}
func /= ( firstPoint: inout CGPoint, secondPoint:CGPoint) {
    firstPoint = firstPoint / secondPoint
}

func / (point: CGPoint, scalar:CGFloat ) -> CGPoint{
    return CGPoint(x: point.x / scalar, y: point.y / scalar )
}
func /= ( point: inout CGPoint, scalar:CGFloat) {
    point = point / scalar
}

#if !(arch(x86_64) || arch(arm64))
    func atan2(y:CGFloat, x:CGFloat) -> CGFloat{
        return CGFloat(atan2(Float(y),Float(x)))
    }
    
    func sqrt(a:CGFloat) -> CGFloat {
        return CGFloat(sqrtf(Float(a)))
    }
#endif

extension CGPoint{
    //Calcula la longitud de un punto usando el teorema de pitagoras
    func length() -> CGFloat{
        return sqrt(x*x+y*y)
    }
    
    func normalize() ->CGPoint{
        return self / length()
    }
    
    var angle: CGFloat{
        return atan2(y, x)
    }
}

let pi = CGFloat(M_PI)

func shortestAngleBetween(angle1:CGFloat, angle2:CGFloat) -> CGFloat {
    
    let twon = 2.0 * pi
    var angle = (angle2 - angle1).truncatingRemainder(dividingBy: twon)
    
    if angle >= pi {
        angle -= twon
    }
    
    if angle <= -pi {
        angle += twon
    }
    return angle
}

extension CGFloat {
    func sign()-> CGFloat {
        return (self >= 0 ) ? 1.0:-1.0
    }
}
