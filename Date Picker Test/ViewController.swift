//
//  ViewController.swift
//  Date Picker Test
//
//  Created by 김종현 on 2018. 4. 10..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myTimer = Timer();
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet var currentTimeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let formatter = DateFormatter()
            formatter.dateFormat = "yyyy--MM--dd HH:mm:ss"
        
        timeLabel.text = formatter.string(from: myDatePicker.date)
        
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
        self.updateTime()
            })
        
        
    }
    func updateTime(){
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy--MM--dd HH:mm:ss"
        currentTimeLabel.text = formatter.string(from: date)
        
        
        if currentTimeLabel.text == timeLabel.text {
            view.backgroundColor = UIColor.red
        }

    }
    
    

    @IBAction func changeDatePicker(_ sender: Any) {
        print("change Date Picker")
//        print(myDatePicker.date)
        
        // dateFormat
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy--MM--dd HH:mm:ss"
        timeLabel.text = formatter.string(from: myDatePicker.date)
        
//        timeLabel.text = String(describing: myDatePicker.date)
        
    }
    
    
    @IBAction func btn01(_ sender: Any) {
        view.backgroundColor = UIColor.white

    }
    
    
}

