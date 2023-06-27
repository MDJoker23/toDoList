//
//  ViewController.swift
//  toDoList
//
//  Created by Joker on 22.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textDetail: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addTask(_ sender: Any) {
        let defaults = UserDefaults.standard
        let taskName = textField.text!
        let taskDetail = textDetail.text!
        
        var newTask = TaskItem()
        newTask.name = taskName
        newTask.detailsTask = taskDetail
        
        do {
            if let data = defaults.data(forKey: "taskItemArray") {
                var array = try JSONDecoder().decode([TaskItem].self, from: data)
                
                array.append(newTask)
                let encodedata = try JSONEncoder().encode(array)
                defaults.set (encodedata, forKey: "taskItemArray")
            } else {
                
                let encodedata = try JSONEncoder().encode([newTask])
                defaults.set (encodedata, forKey: "taskItemArray")
            }
        } catch {
            print("unable to encode \(error)")
        }
        textField.text = ""
        textDetail.text = ""
    }
}

