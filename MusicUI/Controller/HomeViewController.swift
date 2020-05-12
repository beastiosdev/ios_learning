//
//  ViewController.swift
//  MusicUI
//
//  Created by beastlion on 5/9/20.
//  Copyright © 2020 beast.ios.dev. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  let PlaylistsButton: UIButton = {
    let button = UIButton()
    button.setTitle("Playlists".uppercased(), for: .normal)
    button.setTitleColor(#colorLiteral(red: 1, green: 0.0941, blue: 0.3373, alpha: 1), for: .normal)
    button.backgroundColor = .white
    button.contentHorizontalAlignment = .right
    button.clipsToBounds = true
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(playlistAction), for: .touchUpInside)
    return button
  }()
  
  let ArtistsButton: UIButton = {
    let button = UIButton()
    button.setTitle("ARTISTS 🎧".lowercased(), for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), for: .normal)
    button.backgroundColor = .white
    button.contentHorizontalAlignment = .left
    button.clipsToBounds = false
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(artistAction), for: .touchUpInside)
    return button
  }()
  
  let AlbumsButton: UIButton = {
    let button = UIButton()
    button.setTitle("albums".capitalized, for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), for: .normal)
    button.backgroundColor = .white
    button.contentHorizontalAlignment = .left
    button.clipsToBounds = true
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(albumAction), for: .touchUpInside)
    return button
  }()

  let SongsButton: UIButton = {
    let button = UIButton()
    button.setTitle("🎶", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), for: .normal)
    button.backgroundColor = .white
    button.contentHorizontalAlignment = .left
    button.clipsToBounds = true
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(songAction), for: .touchUpInside)
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.title = "Library🦁"
    navigationController?.navigationBar.tintColor = .red
    navigationController?.navigationBar.prefersLargeTitles = true
    view.backgroundColor = .white
    setupView()
    setupConstraints()

    // MARK: Setup Button/Label Constraints
    
    PlaylistsButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
    PlaylistsButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
    PlaylistsButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
    
    AlbumsButton.topAnchor.constraint(equalTo: PlaylistsButton.bottomAnchor, constant: 0).isActive = true
    AlbumsButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
    AlbumsButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
    
    ArtistsButton.topAnchor.constraint(equalTo: AlbumsButton.bottomAnchor, constant: 0).isActive = true
    ArtistsButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
    ArtistsButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
    
    SongsButton.topAnchor.constraint(equalTo: ArtistsButton.bottomAnchor, constant: 0).isActive = true
    SongsButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
    SongsButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
  }

  func setupView() {
    view.addSubview(PlaylistsButton)
    view.addSubview(AlbumsButton)
    view.addSubview(ArtistsButton)
    view.addSubview(SongsButton)
  }
  
  func setupConstraints() {
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-370-[v1]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v1":artworksCollectionView]))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":artworksCollectionView]))
  }
  
  @objc func playlistAction() {
    let PlaylistViewController = PlaylistsViewController()
    navigationController?.pushViewController(PlaylistViewController, animated: true)
  }
  
  @objc func albumAction() {
    let AlbumViewController = AlbumsViewController()
    navigationController?.pushViewController(AlbumViewController, animated: true)
  }
  
  @objc func artistAction() {
    let ArtistViewController = ArtistsViewController()
    navigationController?.pushViewController(ArtistViewController, animated: true)
  }
  @objc func songAction() {
    let SongViewController = SongsViewController()
    navigationController?.pushViewController(SongViewController, animated: true)
  }
}

