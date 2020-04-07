//
//  LaunchScreenManager.swift
//  channels
//
//  Created by Mahmoud Nasser on 4/7/20.
//  Copyright © 2020 Mahmoud Nasser. All rights reserved.
//

import UIKit

class LaunchScreenManager {

    static let instance = LaunchScreenManager(animationDuration: 2)

    var view: UIView?
    var parentView: UIView?

    let animationDuration: Double


    init(animationDuration: Double) {
        self.animationDuration = animationDuration
    }


    // MARK: - Animation

    func animateAfterLaunch(_ parentViewPassedIn: UIView) {
        parentView = parentViewPassedIn
        view = loadView()

        fillParentViewWithView()
        hideRingSegments()
    }

    func loadView() -> UIView {
        return UINib(nibName: "LaunchScreen", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }

    func fillParentViewWithView() {
        parentView!.addSubview(view!)

        view!.frame = parentView!.bounds
        view!.center = parentView!.center
    }
    
    func hideRingSegments() {

        let distanceToMove = parentView!.frame.size.height * 2

        for number in 1...12 {
            let ringSegment: UIView = view!.viewWithTag(number)!

            let degrees = 360 - (number * 30) + 15

            let angle = CGFloat(degrees)

            let radians = angle * (CGFloat.pi / 180)

            let translationX = (cos(radians) * distanceToMove)
            let translationY = (sin(radians) * distanceToMove) * -1

            UIView.animate(
                withDuration: animationDuration * 2,
                delay: animationDuration,
                options: .curveLinear,
                animations: {
                    var transform = CGAffineTransform.identity
                    transform = transform.translatedBy(x: translationX, y: translationY)

                    transform = transform.rotated(by: -2)
                    ringSegment.transform = transform
                },
                completion: { _ in
                    self.view!.removeFromSuperview()
                }
            )
        }
    }
    
}
