//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Jesse Bryce on 5/11/16.
//  Copyright © 2016 Jesse Bryce. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var previousVC = TasksViewController()
    
    @IBOutlet weak var completeLabel: UILabel!
    
    var task : Task? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        if task!.important {
            completeLabel.text = "‼️ \(task!.name!)"
        }else{
            completeLabel.text = task!.name!
        }


        // Do any additional setup after loading the view.
    }
    @IBAction func CompleteTapped(_ sender: UIButton) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()

        navigationController!.popViewController(animated: true)

    }



}
