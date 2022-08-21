//
//  CodeNetflixLoginViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/21.
//

import UIKit

class CodeNetflixLoginViewController: UIViewController {

    let lb_logo : UILabel = {
        let label = UILabel()
        label.text = "JACKFLIX"
        label.textColor = .red
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    let tf_email : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        tf.textAlignment = .center
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 8
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.backgroundColor = .lightGray
        return tf
    }()
    
    let tf_passWord : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        tf.textAlignment = .center
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 8
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.backgroundColor = .lightGray
        return tf
    }()
    
    let tf_nickName : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        tf.textAlignment = .center
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 8
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.backgroundColor = .lightGray
        return tf
    }()
    
    let tf_place : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        tf.textAlignment = .center
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 8
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.backgroundColor = .lightGray
        return tf
    }()
    
    let tf_code : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        tf.textAlignment = .center
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 8
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.backgroundColor = .lightGray
        return tf
    }()
    
    let btn_signIn : UIButton = {
        let btn = UIButton()
        btn.setTitle("회원가입", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.titleLabel?.textAlignment = .center
        btn.backgroundColor = .white
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.cornerRadius = 8
        return btn
    }()
    
    let lb_info : UILabel = {
        let label = UILabel()
        label.text = "추가 정보 입력"
        label.textColor = .white
        return label
    }()
    
    let btn_switch : UISwitch = {
        let btn = UISwitch()
        btn.onTintColor = .red
        return btn
    }()
    
    let stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 30
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function, "NetflixLogin")
        configureUI()
    }

    func configureUI() {
        
        [lb_logo, tf_email, tf_passWord, tf_nickName, tf_place, tf_code, btn_signIn, lb_info, btn_switch, stackView].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        lb_logo.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(40)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
        }
        
        tf_email.snp.makeConstraints { make in
            make.top.equalTo(lb_logo.snp_bottomMargin).offset(140)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(35)
        }
        
        tf_passWord.snp.makeConstraints { make in
            make.top.equalTo(tf_email.snp_bottomMargin).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(35)
        }
        
        tf_nickName.snp.makeConstraints { make in
            make.top.equalTo(tf_passWord.snp_bottomMargin).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(35)
        }
        
        tf_place.snp.makeConstraints { make in
            make.top.equalTo(tf_nickName.snp_bottomMargin).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(35)
        }
        
        tf_code.snp.makeConstraints { make in
            make.top.equalTo(tf_place.snp_bottomMargin).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(35)
        }
        
        btn_signIn.snp.makeConstraints { make in
            make.top.equalTo(tf_code.snp_bottomMargin).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(55)
        }
        
        [lb_info, btn_switch].map{
            self.stackView.addArrangedSubview($0)
        }
        
        lb_info.snp.makeConstraints { make in
            make.centerX.equalTo(btn_switch)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(btn_signIn.snp_bottomMargin).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(55)
        }
        
    }
    
}
