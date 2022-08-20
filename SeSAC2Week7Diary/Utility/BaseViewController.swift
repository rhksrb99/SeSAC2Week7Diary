//
//  BaseViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/19.
//

import UIKit

class BaseViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configure()
        setConstraints()
        
    }
    
    func configure() { }
    
    func setConstraints() { }
    
    func showAlertMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: title, style: .cancel)
        alert.addAction(ok)
        self.present(alert, animated: true)
    }
    
}

