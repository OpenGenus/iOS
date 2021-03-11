//
//  ViewController.swift
//  TableView
//
//  Created by Sai Balaji on 07/03/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tv: UITableView!
    var theivesarray = [Phantom]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        theivesarray = DataService.sharedobj.getTheives()
        
        
        
        tv.delegate = self
        tv.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theivesarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? KaitoCellTableViewCell
        {
            cell.updateCell(imgname: theivesarray[indexPath.row].imagename, name: theivesarray[indexPath.row].name)
            
            return cell
        }
        
        return UITableViewCell()
        
        
        
    }
    
}

