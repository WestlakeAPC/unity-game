//
//  ViewController.swift
//  UnityGame
//
//  Created by Eli Bradley on 4/16/17.
//  Copyright © 2017 Eli Bradley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func onLoadUnity(sender: AnyObject) {
        loadUnity()
    }
    
    @IBAction func onCallUnity(sender: AnyObject) {
        UnitySendMessage("EventBus", "Trigger", "Hello World")
    }
    
    func loadUnity(){
        
        let unityView = UnityGetGLView()
        
        self.view.addSubview(unityView)
        unityView.translatesAutoresizingMaskIntoConstraints = false
        
        // look, non-full screen unity content!
        let views = ["view": unityView]
        let w = NSLayoutConstraint.constraintsWithVisualFormat("|[view]-20-|", options: [], metrics: nil, views: views)
        let h = NSLayoutConstraint.constraintsWithVisualFormat("V:|-75-[view]-50-|", options: [], metrics: nil, views: views)
        
        view.addConstraints(w + h)
    }
}
