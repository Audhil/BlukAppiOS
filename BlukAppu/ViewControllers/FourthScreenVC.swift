//
//  FourthScreenVC.swift
//  BlukAppu
//
//  Created by Mohammed Audhil S on 31/03/21.
//

//  scrollview with paging
import UIKit

class FourthScreenVC: UIViewController {
    
    @IBAction func backBtnPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var scrollView: UIScrollView!
    private var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var contentWidth: CGFloat = 0.0
        
        for index in 1...3 {
            let image = UIImage(named: "img\(index).png")
            let imageView = UIImageView(image:image)
            images.append(imageView)
            
            var newX : CGFloat = 0.0
            newX = view.frame.midX + view.frame.size.width * CGFloat(index)
            contentWidth += newX
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 100, y: (view.frame.size.height / 2) - 100, width: 200, height: 200)
        }
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
}
