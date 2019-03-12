//
//  Weight_ViewController.swift
//  MobileAppCWDennis
//
//  Created by Denislav Rofetov on 12/03/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class Weight_ViewController: UIViewController {

    @IBOutlet weak var btnBack: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBack_Clicked(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "Id1_HomePage", sender:self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
