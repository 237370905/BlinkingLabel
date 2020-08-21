//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by MEIEEPgAAAAAAAAAAAAAAAAAAAEwFAYIKoZIhvcNAwcECGN44y6BRqIpBBgCgnk9jNdWcRJZE3T7u6bmn7TfRScywfw= on 08/21/2020.
//  Copyright (c) 2020 MEIEEPgAAAAAAAAAAAAAAAAAAAEwFAYIKoZIhvcNAwcECGN44y6BRqIpBBgCgnk9jNdWcRJZE3T7u6bmn7TfRScywfw=. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 10, y: 20, width: 200, height: 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        blinkingLabel.text = "I blink"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20);
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
    
        
        let toggleButton = UIButton(frame: CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }
    
    
    @objc func toggleBlinking() {
        if(isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

