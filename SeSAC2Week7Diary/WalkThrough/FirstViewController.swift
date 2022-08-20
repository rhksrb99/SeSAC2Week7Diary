//
//  FirstViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/16.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lb_tutorial: UILabel!
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var blackViewWidth: NSLayoutConstraint!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(systemName: "heart.fill")
        
        lb_tutorial.numberOfLines = 0
        lb_tutorial.font = .boldSystemFont(ofSize: 25)
        lb_tutorial.alpha = 0
        lb_tutorial.backgroundColor = .red
        lb_tutorial.text = """
        일기 쓰자
        잘 써보자
        """
        
        UIView.animate(withDuration: 1){
            self.lb_tutorial.alpha  = 1
            self.lb_tutorial.backgroundColor = .systemIndigo
        } completion: { _ in
            self.animateBlackView()
        }

        blackView.backgroundColor = .black
        blackView.alpha = 0
        
        animateImageView()
        
    }
    
    func animateBlackView() {
        UIView.animate(withDuration: 2){
            self.blackView.transform = CGAffineTransform(scaleX: 2, y: 1)
            self.blackView.alpha = 1
        } completion: { _ in
            
        }
    }
    
    func animateImageView() {
        UIView.animate(withDuration: 1, delay: 0.5, options: [.repeat, .autoreverse]) {
            self.imageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        } completion: { _ in
            
        }

    }
    
    
}
