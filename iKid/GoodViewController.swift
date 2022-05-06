//
//  GoodViewController.swift
//  iKid
//
//  Created by 袁月 on 2022/5/5.
//

import UIKit

class GoodController1: UIViewController {
    fileprivate var firstViewController : GoodController1!
    fileprivate var secondViewController : GoodController2!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func firstBuilder() {
        if firstViewController == nil {
            firstViewController = storyboard?.instantiateViewController(withIdentifier: "First") as? GoodController1
        }
    }
    fileprivate func secondBuilder() {
        if secondViewController == nil {
            secondViewController = storyboard?.instantiateViewController(withIdentifier: "Second") as? GoodController2
        }
    }
    fileprivate func switchViewController(_ from: UIViewController?, to: UIViewController?) {
        if from != nil {
            from!.willMove(toParent: nil)
            from!.view.removeFromSuperview()
            from!.removeFromParent()
            from!.view.isHidden = true
        }
        if to != nil {
            self.addChild(to!)
            self.view.insertSubview(to!.view, at: 0)
            to!.didMove(toParent: self)
        }
    }
    @IBAction func nextButtonTouchUpInside(_ sender: Any) {
        secondBuilder()
        firstBuilder()

        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)

        if firstViewController != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            secondViewController.view.frame = view.frame
            switchViewController(firstViewController, to: secondViewController)
        }
//        else {
//            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
//            firstViewController.view.frame = view.frame
//            switchViewController(secondViewController, to: firstViewController)
//        }
        UIView.commitAnimations()
    }
}

class GoodController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
