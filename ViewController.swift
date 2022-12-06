//
//  ViewController.swift
//  TpToDoList
//
//  Created by Anïck Ryane Mouafo Mawetze on 09/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    //récupère une cellule et la peuple de diff elements
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "ToDocell", for: indexPath) as! toDoTableViewCell
        
        
        cell.titre.text = data[indexPath.row].nom
        cell.Description.text = data[indexPath.row].desc
        cell.statut.isOn = data[indexPath.row].stat
        
        return cell
    }
    
    
    @IBOutlet weak var myTableView: UITableView!
    var data : [Todo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for _ in 1...2{
            let nom = "faire les courses"
            let desc = "lait "
            let stat = false
            let d = Todo(nom: nom, desc: desc, stat: stat)
            data.append(d)
        }
        myTableView.dataSource = self
        
    }

    
    
}

