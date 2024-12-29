//
//  SocnedViewController.swift
//  PassingDataBetwenActivity
//
//  Created by MacOS on 28/12/2024.
//

import UIKit

class SocnedViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let user {
            label.text = "\(user.name) is \(user.age) years old"
        }
        // Do any additional setup after loading the view.
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

struct User {
    let name: String
    let age: String
}
