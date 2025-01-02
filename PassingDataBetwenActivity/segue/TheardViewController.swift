//
//  TheardViewController.swift
//  PassingDataBetwenActivity
//
//  Created by MacOS on 29/12/2024.
//

import UIKit

class TheardViewController: UIViewController {

    @IBOutlet weak var labelData: UILabel!
    var data: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        labelData.text = data
        // Do any additional setup after loading the view.
    }
    
    
    // call this function evry move from activity to activity
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FirstViewController {
            destination.data = "data third activity"
            //destination.modalPresentationStyle = .fullScreen
        }
        if let destination = segue.destination as? SocnedViewController2 {
            destination.data = "data third activity"
            //destination.modalPresentationStyle = .fullScreen
        }
    }
    
    @IBAction func backButton3(_ sender: UIStoryboardSegue) {
        labelData.text = data
    }

}
