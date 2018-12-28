//
//  SecondViewController.swift
//  TIMER
//
//  Created by Ekansh Anand Srivastava on 05/12/18.
//  Copyright © 2018 Avi Srivastava. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
     var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    var timevalue = 0
    
    @objc func incresetime(){
        timevalue=timevalue+1
        time.text = String(timevalue)
    }
    
    
    
    
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func play(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(incresetime), userInfo: nil, repeats: true)
    }
    @IBAction func addten(_ sender: Any) {
        timevalue=timevalue+10
        incresetime()
        
    }
    @IBAction func subtractten(_ sender: Any) {
        timevalue=timevalue-10
        incresetime()
    }
    @IBAction func reset(_ sender: Any) {
        timer.invalidate()
        timevalue=0
        incresetime()
    }
    
    @IBOutlet weak var time: UILabel!
    
    
    @IBAction func timerview(_ sender: Any) {
        performSegue(withIdentifier: "cell2", sender: self)
    }
    
}
