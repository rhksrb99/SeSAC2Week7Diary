//
//  ViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/16.
//

import UIKit
import SeSAC2UIFramwork


class ViewController: UIViewController {
    
    let nameButton : UIButton = {
        let view = UIButton()
        view.setTitle("닉네임", for: .normal)
        view.backgroundColor = .black
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        nameButton.addTarget(self, action: #selector(nameButtonClicked), for: .touchUpInside)
        NotificationCenter.default.addObserver(self, selector: #selector(saveButtonNotificationObserver), name: NSNotification.Name("saveButtonNotification"), object: nil)
    }
    
    @objc func saveButtonNotificationObserver(notification: NSNotification){
        if let name = notification.userInfo?["name"] as? String {
            print(name)
            self.nameButton.setTitle(name, for: .normal)
        }
    }
    
    @objc func nameButtonClicked() {
        
        NotificationCenter.default.post(name: NSNotification.Name("TEST"), object: nil, userInfo: ["name": "\(Int.random(in: 1...100))", "value":123456])
        
        let vc = ProfileViewController()
        
        vc.saveButtonActionHandler = {name in
            self.nameButton.setTitle(name, for: .normal)
        }
        
        present(vc, animated: true)
    }


    func configure() {
        view.addSubview(nameButton)
        
        nameButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
    }
    override func viewDidAppear(_ animated: Bool) {

        let vc = CodeKakaoViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)


    }

}

