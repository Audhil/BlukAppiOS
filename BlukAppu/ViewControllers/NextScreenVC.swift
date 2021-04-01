//
//  NextScreenVCViewController.swift
//  BlukAppu
//
//  Created by Mohammed Audhil S on 30/03/21.
//

import UIKit

class NextScreenVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerSelectedBtn: UIButton!
    
    let states = ["Delhi", "Mumbai", "Chennai", "Bangalore", "Cochin", "Kolkata"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerSelectedBtn.setTitle(states[row], for: UIControl.State.normal)
    }
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func navigateBtnPressed(_ sender: Any) {
        let dataToNextScreen = "I'm from 2nd screen, you are seeing 3rd screen"
        performSegue(withIdentifier: "ThirdVC",sender: dataToNextScreen)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ThirdScreenVC {
            if let data = sender as? String {
                destination.selectedSong = data
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        statePicker.dataSource = self
        statePicker.delegate = self
    }
}
