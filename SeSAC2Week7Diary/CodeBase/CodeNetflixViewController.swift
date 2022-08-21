//
//  CodeNetflixViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/20.
//

import UIKit
import SnapKit

class CodeNetflixViewController: UIViewController {

    let btn_logo : UIButton = {
        let btn = UIButton()
        btn.setTitle("N", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        return btn
    }()
    
    let btn_tvProgram : UIButton = {
        let btn = UIButton()
        btn.setTitle("TV 프로그램", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return btn
    }()
    
    let btn_movie : UIButton = {
        let btn = UIButton()
        btn.setTitle("영화", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return btn
    }()
    
    let btn_pickedContentsTop : UIButton = {
        let btn = UIButton()
        btn.setTitle("내가 찜한 콘텐츠", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return btn
    }()
    
    let btnStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let btn_pickedContentsBottom : UIButton = {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init("내가 찜한 콘텐츠")
            titleAttr.font = .systemFont(ofSize: 12.0, weight: .heavy)
            config.attributedTitle = titleAttr

        let btn = UIButton(configuration: config)
        config.image = UIImage(systemName: "plus")
        //imagePlacement = 이미지 위치, top주면 어트리뷰트스트링 위로
        config.imagePlacement = .top
        config.imagePadding = 10
        config.baseForegroundColor = .white

        btn.setTitleColor(UIColor.white, for: .normal)
        btn.contentHorizontalAlignment = .center
        btn.contentVerticalAlignment = .bottom
        btn.configuration = config
            
        return btn
    }()
    
    let btn_play : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "play_normal"), for: .normal)
        return btn
    }()
    
    let btn_info : UIButton = {
        
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init("정보")
            titleAttr.font = .systemFont(ofSize: 12.0, weight: .heavy)
            config.attributedTitle = titleAttr

        let btn = UIButton(configuration: config)
        config.image = UIImage(named: "info")
        config.imagePlacement = .top
        config.imagePadding = 10
        config.baseForegroundColor = .white

        btn.setTitleColor(UIColor.white, for: .normal)
        btn.contentHorizontalAlignment = .center
        btn.contentVerticalAlignment = .bottom
        btn.configuration = config
        return btn
    }()
    
    let bottomBtnStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 4
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let lb_preview : UILabel = {
        let label = UILabel()
        label.text = "미리보기"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
        return label
    }()
    
    let img_first : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "영화1")
        img.layer.cornerRadius = 8
        return img
    }()
    
    let img_second : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "영화2")
        img.layer.cornerRadius = 8
        return img
    }()
    
    let img_third : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "영화3")
        img.layer.cornerRadius = 8
        return img
    }()
    
    let imgStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 4
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let backGroundImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "영화4")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let gradationImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "background")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function, "Netflix")
        
        configureUI()
        
        
    }
    
    func configureUI() {
        [backGroundImage, gradationImage, btn_logo, btn_tvProgram, btn_movie, btn_pickedContentsTop, btnStackView, btn_pickedContentsBottom, btn_play, btn_info, bottomBtnStackView, lb_preview, img_first, img_second, img_third, imgStackView].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        backGroundImage.snp.makeConstraints { make in
            make.bottomMargin.equalTo(0)
            make.topMargin.equalTo(0)
            make.leadingMargin.equalTo(0)
            make.trailingMargin.equalTo(0)
        }
        
        gradationImage.snp.makeConstraints { make in
            make.bottomMargin.equalTo(0)
            make.topMargin.equalTo(0)
            make.leadingMargin.equalTo(0)
            make.trailingMargin.equalTo(0)
        }
        
        btn_logo.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(12)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        lb_preview.snp.makeConstraints { make in
            make.bottom.equalTo(imgStackView.snp_topMargin).offset(-20)
            make.leadingMargin.equalTo(12)
        }
        
        img_first.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(100)
        }
        
        img_second.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(100)
        }
        
        img_third.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(100)
        }
        
        btn_pickedContentsBottom.snp.makeConstraints { make in
            make.width.equalTo(120)
        }
        
        btn_play.snp.makeConstraints { make in
            make.trailingMargin.equalTo(btn_info.snp_leadingMargin).offset(-20)
        }
        
        // MARK: - StackView
        
        [btn_tvProgram, btn_movie, btn_pickedContentsTop].map {
            self.btnStackView.addArrangedSubview($0)
        }
        
        btnStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.leadingMargin.equalTo(btn_logo.snp_trailingMargin).offset(40)
            make.trailingMargin.equalTo(-20)
        }
        
        [btn_pickedContentsBottom, btn_play, btn_info].map {
            self.bottomBtnStackView.addArrangedSubview($0)
        }
        
        bottomBtnStackView.snp.makeConstraints { make in
            make.bottom.equalTo(lb_preview).offset(-40)
            make.leadingMargin.equalTo(0)
            make.trailingMargin.equalTo(-30)
        }
        
        
        [img_first, img_second, img_third].map {
            self.imgStackView.addArrangedSubview($0)
        }
        
        imgStackView.snp.makeConstraints { make in
            make.leadingMargin.equalTo(4)
            make.trailingMargin.equalTo(-4)
            make.bottomMargin.equalTo(8)
            make.height.equalTo(200)
        }
        
    }
    
}
