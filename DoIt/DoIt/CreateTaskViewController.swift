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
    
    var previousVC = TasksViewController()
    
    @IBAction func addTapped(_ sender: Any?) {
        //Create Task from outlet information
        let task = Task()
        task.name = taskNameText.text!
        task.important = importantSwitch.isOn
        
        //Add new task in array in ViewController
        previousVC.tasks.append(task)
        previousVC.taskTable.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 
}
