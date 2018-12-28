//
//  ViewController.swift
//  TIMER
//
//  Created by Ekansh Anand Srivastava on 05/12/18.
//  Copyright © 2018 Avi Srivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var timer = Timer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
}
    var timevalue = 211
    
    @objc func decreasetime(){
        timevalue=timevalue-1
        time.text = String(timevalue)
    }
    
    
    //outlets and actions
    
    @IBOutlet weak var time: UILabel!
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(decreasetime), userInfo: nil, repeats: true)

    }
    
    @IBAction func add10(_ sender: Any) {
        timevalue=timevalue+10
        decreasetime()
    }
    
    @IBAction func subtractten(_ sender: Any) {
        timevalue=timevalue-10
        decreasetime()
    }
    @IBAction func reset(_ sender: Any) {
        timer.invalidate()
        timevalue=210
        decreasetime()
    }
    
    @IBAction func stopwatch(_ sender: Any) {
        performSegue(withIdentifier: "cell", sender: self)
    }
    

}

