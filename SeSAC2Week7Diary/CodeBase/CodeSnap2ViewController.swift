//
//  CodeSnap2ViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/17.
//

import UIKit

class CodeSnap2ViewController: UIViewController {

    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let yelloView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function, "CodeSnap2ViewController")
        
        [redView, blackView].forEach {
            view.addSubview($0)
        }
        
        redView.addSubview(yelloView)
        // containerView, stackView
        
        redView.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
        }
        
        // RTL
        // left, right <=> leading, trailing
        blackView.snp.makeConstraints { make in
            make.edges.equalTo(redView).inset(50)//.offset(50)
        }
        
    }
    

}
