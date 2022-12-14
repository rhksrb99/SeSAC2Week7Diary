//
//  UIViewController+Extension.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/18.
//

import UIKit

// 화면전환 코드
extension UIViewController {
    func transitionViewController<T: UIViewController>(storyboard: String, viewController vc: T) {
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        guard let controller = sb.instantiateViewController(withIdentifier: T.reuseIdentifier) as? T else { return }
        self.present(controller, animated: true)
        
    }
}
