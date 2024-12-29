//
//  SocnedViewController2.swift
//  PassingDataBetwenActivity
//
//  Created by MacOS on 29/12/2024.
//

import UIKit

class SocnedViewController2: UIViewController {

    @IBOutlet weak var labelData: UILabel!
    var data: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        labelData.text = data
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FirstViewController {
            destination.data = "data socned activity"
            //destination.modalPresentationStyle = .fullScreen
        }
        if let destination = segue.destination as? TheardViewController {
            destination.data = "data socned activity"
            //destination.modalPresentationStyle = .fullScreen
        }
    }

    
    
    @IBAction func backButton2(_ sender: UIStoryboardSegue) {
        labelData.text = data
    }
    

}
