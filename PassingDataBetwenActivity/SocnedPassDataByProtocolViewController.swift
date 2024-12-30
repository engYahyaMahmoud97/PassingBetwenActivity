//
//  SocnedPassDataByProtocolViewController.swift
//  PassingDataBetwenActivity
//
//  Created by MacOS on 30/12/2024.
//

import UIKit

protocol PassDataDelegate{
    func dataDelagate(name : String , age : Int)
}

class SocnedPassDataByProtocolViewController: UIViewController {

    var data : PassDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backToFirstActivity(_ sender: Any) {
        data?.dataDelagate(name: "yahya", age: 22)
        dismiss(animated: true)
    }
    

}
