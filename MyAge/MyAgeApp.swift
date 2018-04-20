//
//  ViewController.swift
//  MyAge
//
//  Created by ABDO on 3/28/18.
//  Copyright © 2018 ABDO. All rights reserved.
//

import UIKit

class MyAgeApp : UIViewController {
    
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    
    @IBOutlet weak var laDisplayAge: UILabel!
    
    @IBOutlet weak var laDisplayMonth: UILabel!
    
    
    @IBOutlet weak var laDisplayDays: UILabel!
    
    
    @IBAction func buGetAge(_ sender: Any) {
        
        let currentDate = Date()
        let bofDate = myDatePicker.date
        let calender = Calendar.current
        let age = calender.dateComponents([Calendar.Component.day] , from:bofDate , to:currentDate)
        laDisplayDays.text = "Your Age In Days Is \(age.day!)"
        
        let agemonth = calender.dateComponents([Calendar.Component.month] , from:bofDate , to:currentDate)
        laDisplayMonth.text = "Your Age In Monthes Is  \(agemonth.month!)"
        
        let ageyear = calender.dateComponents([Calendar.Component.year] , from:bofDate , to:currentDate)
        laDisplayAge.text = "Your Age  Is \(ageyear.year!)"
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

