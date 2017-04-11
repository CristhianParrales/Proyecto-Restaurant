//
//  SecondViewController.swift
//  Proyecto Restaurant
//
//  Created by Cristhian Parrales on 10/4/17.
//  Copyright © 2017 Cristhian Parrales. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var arrayCtaegorias = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let c1 = ["idc":"1","nomc":"Entradas"]
        let c2 = ["idc":"2","nomc":"Segundos"]
        let c3 = ["idc":"3","nomc":"Sopas"]
        let c4 = ["idc":"4","nomc":"Postre"]
        let c5 = ["idc":"5","nomc":"Vinos"]
        arrayCtaegorias = [c1, c2, c3, c4,c5]
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style: .plain, target: nil, action: nil)
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
        return arrayCtaegorias.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "caldaCategoria"
        let celda = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CategoriaCellTableViewCell
        
        let nombreCategoria = arrayCtaegorias[indexPath.row]["nomc"]
        
       // celda.textLabel?.text = nombreCategoria
        celda.nombreCatCell.text = nombreCategoria
        
        return celda
    }
}



















































