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
            let myAlert = UIAlertController(title: "알림", message: "설정된 시간이 되었습니다!!", preferredStyle: .actionSheet)
            
            
            let okAction = UIAlertAction(title: "종료", style: .default) { (action: UIAlertAction) -> Void in
                self.view.backgroundColor = UIColor.red
                
                
                
            }
            
            //후행 클로저
            let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: { (action: UIAlertAction) -> Void in
                self.view.backgroundColor = UIColor.green
            })
            let testAction = UIAlertAction(title: "테스트", style: .default, handler: nil)
            
            myAlert.addAction(okAction)
            myAlert.addAction(cancelAction)
            myAlert.addAction(testAction)
            
            present(myAlert, animated: true, completion: nil)
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

