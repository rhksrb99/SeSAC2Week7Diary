//
//  IntroViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/17.
//

import UIKit
import SeSAC2UIFramwork

class IntroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btn_enter(_ sender: UIButton) {
        let sb = UIStoryboard(name: "WalkThrough", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: WalkThroughViewController.reuseIdentifier) as! WalkThroughViewController
        
        UserDefaults.standard.set(true, forKey: "First")
        
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }
}
