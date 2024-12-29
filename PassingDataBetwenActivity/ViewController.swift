//
//  ViewController.swift
//  PassingDataBetwenActivity
//
//  Created by MacOS on 28/12/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lableName: UITextField!
    
    @IBOutlet weak var lableAge: UITextField!
    @IBOutlet weak var sendBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendBtn(_ sender: Any) {
        
        // when navigation controller
        let socendVC = storyboard?.instantiateViewController(identifier: "socnedVCN") as! SocnedViewController
//           let socendVC = storyboard?.instantiateViewController(identifier: "socnedVC") as! SocnedViewController
//    
        if lableName.text?.isEmpty == true || lableAge.text?.isEmpty == true {
            let alert = UIAlertController(title: "Error", message: "Please enter name and age", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }else{
            socendVC.user = User(name: lableName.text!, age: lableAge.text!)
            socendVC.modalPresentationStyle = .fullScreen
            
            //present(socendVC, animated: true , completion: nil)
            
            // when navigation controller
            navigationController?.pushViewController( socendVC, animated: true)
        }
        
        
    }
    
}

