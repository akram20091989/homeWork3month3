//
//  ContactsViewController.swift
//  homeWork3month3
//
//  Created by bond on 24/5/23.
//

import UIKit

class ContactsViewController: UIViewController {

    @IBOutlet weak var contactsTableView: UITableView!
    private var contacts:[Contact] = []
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        contactsTableView.dataSource = self
        updateData()

    }
    private func updateData(){
        contacts = [Contact(name: "Vasya", number: "+996706231455", image: "image1"),
                    Contact(name: "Tanya", number: "+996553245433", image: "image2"),
                    Contact(name: "Asya", number: "+996705435255", image: "image3"),
                    Contact(name: "Tahir", number: "+996556898333", image: "image4"),
                    Contact(name: "Toni", number: "+996771235543", image: "image5"),
                    Contact(name: "Umar", number: "+996555345533", image: "image6"),
                    Contact(name: "leila", number: "+99670456434", image: "image7"),
                    Contact(name: "lena", number: "+996553245433", image: "image8"),
                    Contact(name: "Ilya", number: "+996705435255", image: "image9"),
                    Contact(name: "Igor", number: "+996555234589", image: "image10"),]
        
    }
}

extension ContactsViewController: UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.imageView?.image = UIImage(named:contacts[indexPath.row].image)
        cell.detailTextLabel?.text = contacts[indexPath.row].number
        return cell
    }
    
}
