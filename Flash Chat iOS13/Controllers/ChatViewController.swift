//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages: [Message] = [Message(sender: "ID1", body: "Message 1"), Message(sender: "ID2", body: "Message 2"), Message(sender: "ID1", body: "Message 3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Need to remove the back button on the top bar
        navigationItem.hidesBackButton = true
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: Constants.reusableNiB, bundle: nil), forCellReuseIdentifier: Constants.reusableCell)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
        if let messageContent = messageTextfield.text {
            messages.append(Message(sender: "ID1", body: messageContent))
            
            tableView.reloadData()
        }
    }
    
    
    @IBAction func logoutPresssed(_ sender: UIBarButtonItem) {
        //TODO: Log the user out
        navigationController?.popToRootViewController(animated: true)
    }
}

extension ChatViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.reusableCell, for: indexPath) as! MessageCellTableViewCell
        
        
        cell.messageBody.text = messages[indexPath.row].body
        
        return cell
    }
}
