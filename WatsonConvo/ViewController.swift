

//
//  ViewController.swift
//  WatsonConvo
//
//  Created by API_Server on 18/10/16.
//  Copyright © 2016 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var msgToSend: UITextView!


 
    
    var message: [String] = [String]()

    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var numberOfRows = 0
    var userType: dataModel?
    var userTypes: [dataModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
//        myTableView.estimatedRowHeight = 44.0
//        myTableView.rowHeight = UITableViewAutomaticDimension
        //k.jdfhcildfcuhduilhhhhjMY
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func sendTo(_ sender: AnyObject) {
        
        let msg : String = self.msgToSend.text
        
             userType!.message = msg
            userTypes.append(userType!)
//            myTableView.reloadData()
        
        
            
//    userTypes.append(message)

    }
    
    
 
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
     
      //cell.message.textAlignment = NSTextAlignment.Right
      cell.textLabel!.text = userTypes[indexPath.row].message
        

        return cell
    }


}

