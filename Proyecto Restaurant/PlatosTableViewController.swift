//
//  PlatosTableViewController.swift
//  Proyecto Restaurant
//
//  Created by Cristhian Parrales on 11/4/17.
//  Copyright © 2017 Cristhian Parrales. All rights reserved.
//

import UIKit

class PlatosTableViewController: UITableViewController {

    var arrayPlatos = [[String: String]]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confNavBar()
    
        arrayPlatos = DataBase().ejecutarSelect("SELECT * FROM platos_comidas WHERE id_categoria = 1") as! [[String: String]]
   
    }

    func confNavBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "v2_barra_titulo"), for: .default)
        
        let logo = UIImage(named:"v2_logo")
        self.navigationItem.titleView = UIImageView(image: logo)
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style: .plain, target: nil, action: nil)
        
        self.tabBarController?.tabBar.barTintColor = UIColor(patternImage: UIImage(named: "patronColor")!)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPlatos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaPlatos", for: indexPath) as! CustomCellPlatoTableViewCell

        // Configure the cell...

        //cell.textLabel?.text = "Platos"
        
        let nombreP = arrayPlatos[indexPath.row]["nombre_plato"]
        let descriP = arrayPlatos[indexPath.row]["descripcion_plato"]
        let precioP = arrayPlatos[indexPath.row]["precio_plato"]
        if let archivoImg = arrayPlatos[indexPath.row]["archivo_plato"] {
                cell.imagenCellP.image = UIImage(named: archivoImg)
        }
        cell.tituloCellP.text = nombreP
        cell.descripcionCellP.text = descriP
        cell.precioCellP.text = precioP

        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
