//
//  Constraints setup.swift
//  SafariViewController02
//
//  Created by Pijush Debbarma on 18/04/19.
//  Copyright © 2019 None. All rights reserved.
//

import Foundation
import UIKit
extension ViewController{
    func constraints(){
        NSLayoutConstraint.activate([
       urlTextField.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
       urlTextField.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
       urlTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60),
       urlTextField.heightAnchor.constraint(equalToConstant: 50),
       
       openBTN.topAnchor.constraint(equalTo: urlTextField.bottomAnchor, constant: 60),
       openBTN.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
       openBTN.widthAnchor.constraint(equalToConstant: 80),
       openBTN.heightAnchor.constraint(equalToConstant: 45),
        ])
    }
}
