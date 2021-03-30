//
//  ThirdScreenVC.swift
//  BlukAppu
//
//  Created by Mohammed Audhil S on 31/03/21.
//

import UIKit

class ThirdScreenVC: UIViewController {

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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
