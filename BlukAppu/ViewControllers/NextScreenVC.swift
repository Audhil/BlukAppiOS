//
//  NextScreenVCViewController.swift
//  BlukAppu
//
//  Created by Mohammed Audhil S on 30/03/21.
//

import UIKit

class NextScreenVC: UIViewController {

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func navigateBtnPressed(_ sender: Any) {
//        let dataToNextScreen = "Jack and jill went up the hill!"
//        performSegue(withIdentifier: "ThirdScreenVC",sender: dataToNextScreen)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destination = segue.destination as? ThirdScreenVC {
//            if let data = sender as? String {
//                destination.selectedString = data
//            }
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
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
