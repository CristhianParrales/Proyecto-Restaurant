//
//  SecondViewController.swift
//  Proyecto Restaurant
//
//  Created by Cristhian Parrales on 10/4/17.
//  Copyright © 2017 Cristhian Parrales. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var arrayCategorias = [[String:String]]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // leyendo desde tabla Categorias
        arrayCategorias =  DataBase().ejecutarSelect("SELECT * FROM categoria_platos") as! [[String: String]]
        
        print(arrayCategorias)
        
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
        return arrayCategorias.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "celdaCategoria"
        let celda = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CategoriaCellTableViewCell
        
        let nombreCategoria = arrayCategorias[indexPath.row]["nombre_categoria"]
        
       // celda.textLabel?.text = nombreCategoria
        celda.nombreCatCell.text = nombreCategoria
        
        return celda
    }
}



















































