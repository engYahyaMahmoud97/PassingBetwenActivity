//
//  FirstViewController.swift
//  PassingDataBetwenActivity
//
//  Created by MacOS on 29/12/2024.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var labelData: UILabel!
    var data: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        //labelData.text = data

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if let destination = segue.destination as? SocnedViewController2 {
            destination.data = "data first activity"
            //destination.modalPresentationStyle = .fullScreen
        }
        if let destination = segue.destination as? TheardViewController {
            destination.data = "data first activity"
            //destination.modalPresentationStyle = .fullScreen

        }
    }
    
    @IBAction func backButton1(_ sender: UIStoryboardSegue) {
        labelData.text = data
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
