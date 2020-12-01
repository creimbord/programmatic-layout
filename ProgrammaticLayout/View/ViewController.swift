//
//  ViewController.swift
//  ProgrammaticLayout
//
//  Created by Родион on 30.11.2020.
//  Copyright © 2020 Rodion Artyukhin. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Views
    lazy var album     = UILabel()
    lazy var track     = UILabel()
    lazy var cover     = UIView()
    lazy var timeScale = UIView()
    lazy var play      = UIView()
    lazy var rewind    = UIView()
    lazy var forward   = UIView()

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
        view.addSubview(album)
        view.addSubview(track)
        view.addSubview(cover)
        view.addSubview(timeScale)
        view.addSubview(play)
        view.addSubview(rewind)
        view.addSubview(forward)
    }
    
    func setupViews() {
        setupView()
        setupAlbumLabel()
        setupTrackLabel()
        setupCoverView()
        setupTiemScaleView()
        setupPlayView()
        setupRewindView()
        setupForwardView()
    }
    
    func setupView() {
        view.backgroundColor = .white
    }
    
    func setupAlbumLabel() {
        album.text = "Toxicity"
        album.font = HelveticaNeue.medium(size: 24)
        album.textColor = .black
    }
    
    func setupTrackLabel() {
        track.text = "Chop Suey!"
        track.font = HelveticaNeue.medium(size: 19)
        track.textColor = .darkGray
    }
    
    func setupCoverView() {
        cover.backgroundColor = .lightGray
        cover.layer.cornerRadius = 30.HAdapted
    }
    
    func setupTiemScaleView() {
        timeScale.backgroundColor = .darkGray
    }
    
    func setupPlayView() {
        play.backgroundColor = .lightGray
        play.layer.cornerRadius = 75.HAdapted / 2
    }
    
    func setupRewindView() {
        rewind.backgroundColor = .lightGray
        rewind.layer.cornerRadius = 38.HAdapted / 2
    }
    
    func setupForwardView() {
        forward.backgroundColor = .lightGray
        forward.layer.cornerRadius = 38.HAdapted / 2
    }
}

// MARK: - Setup constraints
private extension ViewController {
    func setupConstraints() {
        setupAlbumConstraints()
        setupTrackConstraints()
        setupCoverConstraints()
        setupTimeScaleConstraints()
        setupPlayConstraints()
        setupRewindConstraints()
        setupForwardConstraints()
    }
    
    func setupAlbumConstraints() {
        album.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30.VAdapted)
            make.left.equalTo(timeScale.snp.left)
        }
    }
    
    func setupTrackConstraints() {
        track.snp.makeConstraints { (make) in
            make.top.equalTo(album.snp.bottom).offset(1.VAdapted)
            make.left.equalTo(timeScale.snp.left)
        }
    }
    
    func setupCoverConstraints() {
        cover.snp.makeConstraints { (make) in
            make.top.equalTo(track.snp.bottom).offset(50.VAdapted)
            make.centerX.equalTo(view)
            make.size.equalTo([250, 250].HResized)
        }
    }
    
    func setupTimeScaleConstraints() {
        timeScale.snp.makeConstraints { (make) in
            make.top.equalTo(cover.snp.bottom).offset(60.VAdapted)
            make.centerX.equalTo(view)
            make.size.equalTo([300, 3].HResized)
        }
    }
    
    func setupPlayConstraints() {
        play.snp.makeConstraints { (make) in
            make.top.equalTo(timeScale.snp.bottom).offset(50.VAdapted)
            make.centerX.equalTo(view)
            make.size.equalTo([75, 75].HResized)
        }
    }
    
    func setupRewindConstraints() {
        rewind.snp.makeConstraints { (make) in
            make.right.equalTo(play.snp.left).offset(-40.HAdapted)
            make.centerY.equalTo(play)
            make.size.equalTo([38, 38].HResized)
        }
    }
    
    func setupForwardConstraints() {
        forward.snp.makeConstraints { (make) in
            make.left.equalTo(play.snp.right).offset(40.HAdapted)
            make.centerY.equalTo(play)
            make.size.equalTo([38, 38].HResized)
        }
    }
}
