//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Jesse Bryce on 5/11/16.
//  Copyright © 2016 Jesse Bryce. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameText: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    @IBAction func addTapped(_ sender: Any) {
        //Create Task from outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameText.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // save and pop back
       
        navigationController!.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 
}
