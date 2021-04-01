//
//  ViewController.swift
//  BlukAppu
//
//  Created by Mohammed Audhil S on 28/03/21.
//

import UIKit

class FirstScreenVC: UIViewController {
    
    @IBOutlet weak var stFbOutlet: UIButton!
    @IBOutlet weak var stEmailOutlet: UIButton!
    @IBOutlet weak var stGoogOutlet: UIButton!
    
    @IBAction func stGoog(_ sender: Any) {
        print("yup! Google clicked!")
    }
    
    @IBAction func stEmail(_ sender: Any) {
        print("yup! Email clicked!")
    }
    
    @IBAction func stFb(_ sender: Any) {
        print("yup! FB clicked!")
    }
    
    @IBAction func btnClick(_ sender: Any) {
        stFbOutlet.isHidden = false
        stEmailOutlet.isHidden = false
        stGoogOutlet.isHidden = false
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
}
