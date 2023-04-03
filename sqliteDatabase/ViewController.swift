//
//  ViewController.swift
//  sqliteDatabase
//
//  Created by R82 on 18/04/35.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t2: UITextField!
    @IBOutlet weak var t1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Sqlite.createFile()
    }

    @IBAction func bAction(_ sender: Any) {
        if let x = t1.text, let y = Int(x){
            Sqlite.addData(id: y, name: t2.text!)
        }
    }
    
    @IBAction func navigate(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
        navigationController?.pushViewController(n, animated: true)
    }
    
    @IBAction func deletedf(_ sender: Any) {
        if let x = t1.text, let y = Int(x){
            Sqlite.deleteData(id: y)
    }
}
}

