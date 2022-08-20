//
//  WriteViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/19.
//

import UIKit
import SnapKit

class WriteViewController: BaseViewController {
    
    var mainView = WriteView()
    
    // viewDidLoad보다 먼저 호출된다.
    override func loadView() { // super.loadView 는 작성하지 않는다.
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func configure() {
        
    }
    
    override func setConstraints() {
        mainView.titleTextField.addTarget(self, action: #selector(titleTextFieldClicked(_:)), for: .editingDidEndOnExit)
    }
    
    @objc func titleTextFieldClicked(_ textField: UITextField) {
        guard let text = textField.text, text.count > 0 else {
            showAlertMessage(title: "제목을 입력해주세요", message: "확인")
            return
        }
    }
    
}
