//
//  BaseView.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/19.
//

import UIKit

class BaseView: UIView {
    
    // 코드 베이스
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
    }
    
    // xib storyboard, protocol
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {  }
    
    func setConstraints() {  }
    
}
