//
//  ViewController1.swift
//  sqliteDatabase
//
//  Created by R82 on 03/04/23.
//

import UIKit

class ViewController1: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    var arr2 = Sqlite.getData()
    @IBOutlet weak var tv: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tv.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        cell.l1.text = arr2[indexPath.row].id.description
        cell.l2.text = arr2[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
