//
//  CodeKakaoViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/17.
//

import UIKit
import SnapKit

class CodeKakaoViewController: UIViewController {

    
    let btn_close : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "multiply"), for: .normal)
        btn.backgroundColor = .clear

        return btn
    }()
    
    let btn_gift : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "shippingbox.circle"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()

    let btn_qrCode : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "qrcode.viewfinder"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()

    let btn_general : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "gearshape"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()

    let btn_chat : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "message.fill"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()

    let btn_editProfile : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "pencil"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()

    let btn_story : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "quote.bubble.fill"), for: .normal)
        btn.backgroundColor = .clear
        return btn
    }()

    let img_backGround : UIImageView = {
        let image = UIImageView()

        return image
    }()

    let img_profile : UIImageView = {
        let image = UIImageView()

        return image
    }()

    let lb_name : UILabel = {
        let label = UILabel()
        label.text = "이름"
        label.font = .systemFont(ofSize: 17)
        label.textAlignment = .center
        return label
    }()

    let lb_profile : UILabel = {
        let label = UILabel()
        label.text = "상태메시지"
        label.font = .systemFont(ofSize: 17)
        label.textAlignment = .center
        return label
    }()
    
    let bottomStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 8
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function, "kakao")
        configureUI()
        view.backgroundColor = .white
    }
    
    func configureUI() {
        // 뷰에 추가
        [btn_chat, btn_gift, btn_close, btn_story, btn_general, btn_qrCode, btn_editProfile, img_profile, img_backGround, lb_name, lb_profile, bottomStackView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        btn_close.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(20)
            make.height.equalTo(20)
        }
        
        btn_general.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.trailingMargin.equalTo(-20)
        }
        
        btn_qrCode.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.trailingMargin.equalTo(-60)
        }
        
        btn_gift.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.trailingMargin.equalTo(-100)
        }
        
        [btn_chat, btn_editProfile, btn_story].map {
            self.bottomStackView.addArrangedSubview($0)
        }
        
        bottomStackView.snp.makeConstraints { make in
            make.leadingMargin.equalTo(view.safeAreaLayoutGuide)
            make.trailingMargin.equalTo(view.safeAreaLayoutGuide)
            make.bottomMargin.equalTo(view.safeAreaLayoutGuide)
        }
        
        
        
//        let top = NSLayoutConstraint(item: btn_close, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 20)
//
//        let leading = NSLayoutConstraint(item: btn_close, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 20)
//
////        let trailing = NSLayoutConstraint(item: btn_close, attribute: .trailing, relatedBy: .equal, toItem: emailTextField, attribute: .trailing, multiplier: 1, constant: -50)
//
//        let height = NSLayoutConstraint(item: btn_close, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 20)
//
//        view.addConstraints([top, leading, height])
//
//        btn_close.translatesAutoresizingMaskIntoConstraints =  false
        
        
        
        
//        NSLayoutConstraint.activate([
//            btn_close.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            btn_close.widthAnchor.constraint(equalToConstant: 300),
//            btn_close.heightAnchor.constraint(equalToConstant: 50),
//            btn_close.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
//        ])
    }

}
