//
//  ViewController.swift
//  ProgrammaticLayout
//
//  Created by Родион on 30.11.2020.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Views
    lazy var cover = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupViews()
        setupConstraints()
    }

}

// MARK: - Setup views
private extension ViewController {
    func addSubviews() {
        view.addSubview(cover)
    }
    
    func setupViews() {
        setupView()
        setupCoverView()
    }
    
    func setupView() {
        view.backgroundColor = .white
    }
    
    func setupCoverView() {
        cover.backgroundColor = UIColor.init(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        cover.layer.cornerRadius = 30
    }
}

// MARK: - Setup constraints
private extension ViewController {
    func setupConstraints() {
        setupCoverConstraints()
    }
    
    func setupCoverConstraints() {
        cover.snp.makeConstraints { (make) in
            make.top.equalTo(view).offset(124)
            make.centerX.equalTo(view)
            make.size.equalTo(CGSize(width: 250, height: 250))
        }
    }
}
