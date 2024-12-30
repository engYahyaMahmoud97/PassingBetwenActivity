//
//  FirstPassDataByProtocolViewController.swift
//  PassingDataBetwenActivity
//
//  Created by MacOS on 30/12/2024.
//

import UIKit

class FirstPassDataByProtocolViewController: UIViewController , PassDataDelegate {
    func dataDelagate(name: String, age: Int) {
        labelData.text = "name :\(name) - age : \(age)"
    }
    

    @IBOutlet weak var labelData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goToGetData(_ sender: Any) {
        let svc = self.storyboard?.instantiateViewController(identifier: "socnedStoryboard") as! SocnedPassDataByProtocolViewController
        svc.data = self
        svc.modalPresentationStyle = .fullScreen
        present(svc, animated: true)
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
