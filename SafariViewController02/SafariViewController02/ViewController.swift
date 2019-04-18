//
//  ViewController.swift
//  SafariViewController02
//
//  Created by Pijush Debbarma on 18/04/19.
//  Copyright © 2019 None. All rights reserved.
//

import UIKit
import SafariServices
class ViewController: UIViewController {
    
    let urlTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textAlignment = .left
        tf.layer.borderWidth = 0.2
        tf.borderStyle = UITextField.BorderStyle.none
        tf.layer.cornerRadius = 4
        tf.clearButtonMode = UITextField.ViewMode.whileEditing
        tf.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: tf.frame.height))
        tf.leftViewMode = .always
        tf.placeholder = "Enter URL here"
        return tf
    }()
    
    let openBTN: UIButton = {
        let b = UIButton()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setTitle("Open", for: .normal)
        b.layer.cornerRadius = 4
        b.clipsToBounds = true
        b.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(urlTextField)
        self.view.addSubview(openBTN)
        openBTN.addTarget(self, action: #selector(openAction), for: .touchUpInside)
        constraints()
    }
    
    @objc func openAction(_ sender: UIButton){
        
        if (urlTextField.text?.hasPrefix("https://"))! == true{
            guard let url = URL(string: urlTextField.text!.lowercased()) else{ return }
            let safariVC = SFSafariViewController(url: url)
            self.present(safariVC, animated: true, completion: nil)
        }else{
            //Only HTTP and HTTPS URLs are supported
            urlTextField.text = "https://" + "\(urlTextField.text!.lowercased())"
            guard let url = URL(string: urlTextField.text!.lowercased()) else{ return }
            let safariVC = SFSafariViewController(url: url)
            self.present(safariVC, animated: true, completion: nil)
        }
        
    }

}

