//
//  ThirdScreenVC.swift
//  BlukAppu
//
//  Created by Mohammed Audhil S on 31/03/21.
//

import UIKit

class ThirdScreenVC: UIViewController {
    
    @IBAction func backBtnPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextBtnPress(_ sender: Any) {
        performSegue(withIdentifier: "FourthVC",sender: nil)
    }
    
    @IBOutlet weak var justLabel: UILabel!
    
    private var _selectedString: String!
    var selectedSong: String{
        get{
            return _selectedString
        }
        set{
            _selectedString = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        justLabel.text = _selectedString
    }
}
