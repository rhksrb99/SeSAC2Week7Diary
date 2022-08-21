//
//  CodeSnapViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/17.
//

import UIKit
import SnapKit

class CodeSnapViewController: UIViewController {

    let responseImage = UIImage()
    
    let photoImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .lightGray
        view.image = UIImage(systemName: "photo")
        view.tintColor = .black
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let btn_search : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "plus"), for: .normal)
//        btn.layer.cornerRadius = 40
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.cornerRadius = 9
        btn.backgroundColor = .darkGray
        btn.tintColor = .white
        return btn
    }()
    
    let titleTextField: UITextField = {
        print("TEXTFIELD")
        let view = UITextField()
        
        view.borderStyle = .none
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        view.placeholder = "제목을 입력해주세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        
        return view
    }()
    
    let dateTextField: UITextField = {
        let view = UITextField()
        
        view.borderStyle = .none
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        view.placeholder = "날짜를 입력해주세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        
        return view
    }()
    
    let contentTextView: UITextView = {
        let view = UITextView()
        
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function, "CodeSnapViewController")
        configureUI()
        view.backgroundColor = .white
        btn_search.addTarget(self, action: #selector(searchImage), for: .touchUpInside)
    }
    
    @objc func searchImage() {
        
        let vc = CodeSelectImageViewController()
//        let nav = UINavigationController(rootViewController: vc)
//        nav.present(vc, animated: true)
//        self.modalPresentationStyle = .fullScreen
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    func configureUI() {
        
        [photoImageView, btn_search, titleTextField, dateTextField, contentTextView].forEach {
            view.addSubview($0)
        }
        
        photoImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(view).multipliedBy(0.3)
        }
        
        btn_search.snp.makeConstraints { make in
            make.trailing.equalTo(photoImageView.snp.trailing).offset(-20)
            make.bottom.equalTo(photoImageView.snp.bottom).offset(-20)
        }
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        contentTextView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
    }

}
