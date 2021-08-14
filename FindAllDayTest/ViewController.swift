//
//  ViewController.swift
//  FindAllDayTest
//
//  Created by Konstantin on 14.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dayTF: UITextField!
    @IBOutlet weak var mounthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDay(_ sender: UIButton) {
        
        guard let day = dayTF.text, let month = mounthTF.text, let year = yearTF.text else { return }
        
        let calendar = Calendar.current
        let dateFormatter = DateFormatter()
        var dateComponents = DateComponents()
        
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let weekday = dateFormatter.string(from: date)
        let capitalizedWeekday = weekday.capitalized
        
        resultLabel.text = capitalizedWeekday
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
}

