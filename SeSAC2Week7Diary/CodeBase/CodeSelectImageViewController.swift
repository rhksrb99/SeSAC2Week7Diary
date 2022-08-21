//
//  CodeSelectImageViewController.swift
//  SeSAC2Week7Diary
//
//  Created by 박관규 on 2022/08/21.
//

import UIKit

class CodeSelectImageViewController: UIViewController {

    let navigationBar : UINavigationBar = {
        let nav = UINavigationBar()
        
        return nav
    }()
    
    let searchBar : UISearchBar = {
        let searchBar = UISearchBar()
        
        return searchBar
    }()
    
    let collectionViewCell : UICollectionViewCell = {
        let collectionViewCell = UICollectionViewCell()
        
        return collectionViewCell
    }()
    
    let collectionImage : UIImageView = {
        let collectionImage = UIImageView()
        
        return collectionImage
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        navigationUI()
    }
    
    func navigationUI() {
        navigationController?.navigationBar.scrollEdgeAppearance = UINavigationBarAppearance()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "선택", style: .plain, target: self, action: #selector(btn_select))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(btn_close))
    }
    
    @objc func btn_select() {
        
    }
    
    @objc func btn_close() {
        
    }
    
    func configureUI() {
        [navigationBar, searchBar, collectionViewCell, collectionImage].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
    }
}
