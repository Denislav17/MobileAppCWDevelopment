//
//  Constants_TableViewController.swift
//  MobileAppCWDennis
//
//  Created by Dennis Roffetov on 15/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class Constants_TableViewController: UITableViewController {
    @IBOutlet weak var cellElectronMass: UITableViewCell!
    @IBOutlet weak var cellProtonMass: UITableViewCell!
    @IBOutlet weak var cellNeutronMass: UITableViewCell!
    @IBOutlet weak var cellElectricPermittivity: UITableViewCell!
    @IBOutlet weak var cellMagneticPermeability: UITableViewCell!
    @IBOutlet weak var cellSpeedOfLight: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellElectronMass.textLabel?.text = (cellElectronMass.textLabel?.text)! + " 9.1093u [9.1093897(54)E-31 kg]"
        
        cellProtonMass.textLabel?.text = (cellProtonMass.textLabel?.text)! + " 1.6726u [1.6726231(10)E-27 kg]"
        
        cellNeutronMass.textLabel?.text = (cellNeutronMass.textLabel?.text)! + " 1.6749u [1.6749286(10)E-27 kg] "
        
        cellElectricPermittivity.textLabel?.text = (cellElectricPermittivity.textLabel?.text)! + " 8.8541 F/m"
        
        cellMagneticPermeability.textLabel?.text = (cellMagneticPermeability.textLabel?.text)! + " 12.5663 H/m"
        
        cellSpeedOfLight.textLabel?.text = (cellSpeedOfLight.textLabel?.text)! + " 2.9979 m/s [2.99792458E+08]"
        
        
        

    }


    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 6
    }

    @IBAction func btnBack_Touched(_ sender: Any) {
        performSegue(withIdentifier: "Id6_HomePage", sender: self)
    }
    @IBAction func btnDataSource_Touched(_ sender: Any) {
        guard let url = URL(string: "https://newton.ex.ac.uk/research/qsystems/collabs/constants.html") else { return }
        UIApplication.shared.open(url)
    }
    
}
