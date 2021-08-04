//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Ufuk Celen on 4.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var isJames = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
        
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic() {
      
        if isJames == true{
            imageView.image = UIImage(named: "Kirk")
            nameLabel.text = "Kirk Hammet"
            isJames = false
        }else{
            imageView.image = UIImage(named: "James")
            nameLabel.text = "James Hetfield"
            isJames = true
        }
        
        
    }

}

