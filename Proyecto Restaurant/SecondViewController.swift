//
//  SecondViewController.swift
//  Proyecto Restaurant
//
//  Created by Cristhian Parrales on 10/4/17.
//  Copyright © 2017 Cristhian Parrales. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // metodos delegados de UITableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "caldaCategoria"
        let celda = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        celda.textLabel?.text = "fila \(indexPath.row)"
        
        return celda
    }
}

