//
//  ViewController.swift
//  TableViewsContinue
//
//  Created by Oscar Victoria Gonzalez  on 11/12/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let swiftTopics = ["Basic Operators", "Strings and Characters", "Collection Types", "Control Flow", "Functions",
    "Closures", "Enumerations", "Structures and Classes", "Properties", "Methods", "Subscripts",
    "Inheritance", "Initialization", "Deinitialization", "Optional Chaining", "Error Handling",
    "Type Casting", "Nested Types", "Extensions", "Protocols", "Generics", "Opaque Types",
    "Automatic Reference Counting", "Memory Safety", "Access Control", "Advanced Operators"
    ]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    
    
    


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftTopics.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
        
        
         let swiftTopic = swiftTopics[indexPath.row]
        
         cell.textLabel?.text = swiftTopic
        
        
        
        return cell
    }
    
    
}
