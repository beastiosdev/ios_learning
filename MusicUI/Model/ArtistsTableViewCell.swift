//
//  ArtistsTableViewCell.swift
//  MusicUI
//
//  Created by BeastLion on 5/11/20.
//  Copyright © 2020 beast.ios.dev. All rights reserved.
//

import UIKit

class ArtistsTableViewCell: UITableViewCell {
  var Artist: Artists? {
    didSet {
      guard let listItem = Artist else {return}
      if let name = listItem.name {
        profileImageView.image = UIImage(named: name)
        nameLabel.text = name
      }
      
      if let style = listItem.style {
        styleTitleLabel.text = " \(style)"
      }
      if let country = listItem.country {
        countryImageView.image = UIImage(named: country)
      }
    }
  }
  
  let containerView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.clipsToBounds = true
    return view
  }()
  
  let profileImageView: UIImageView = {
    let img = UIImageView()
    img.contentMode = .scaleAspectFill
    img.translatesAutoresizingMaskIntoConstraints = false
    img.layer.cornerRadius = 35
    img.clipsToBounds = true
    return img
  }()
  
  let nameLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.boldSystemFont(ofSize: 20)
    label.textColor = .black
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let styleTitleLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.boldSystemFont(ofSize: 14)
    label.textColor = .white
    label.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
    label.layer.cornerRadius = 5
    label.clipsToBounds = true
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let countryImageView: UIImageView = {
    let img = UIImageView()
    img.contentMode = .scaleAspectFill
    img.translatesAutoresizingMaskIntoConstraints = false
    img.layer.cornerRadius = 13
    img.clipsToBounds = true
    return img
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    self.contentView.addSubview(profileImageView)
    containerView.addSubview(nameLabel)
    containerView.addSubview(styleTitleLabel)
    self.contentView.addSubview(containerView)
    self.contentView.addSubview(countryImageView)
    
    profileImageView.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
    profileImageView.leadingAnchor.constraint(equalTo:self.contentView.leadingAnchor, constant:10).isActive = true
    profileImageView.widthAnchor.constraint(equalToConstant:70).isActive = true
    profileImageView.heightAnchor.constraint(equalToConstant:70).isActive = true
    
    containerView.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
    containerView.leadingAnchor.constraint(equalTo:self.profileImageView.trailingAnchor, constant:10).isActive = true
    containerView.trailingAnchor.constraint(equalTo:self.contentView.trailingAnchor, constant:-10).isActive = true
    containerView.heightAnchor.constraint(equalToConstant: 55).isActive = true
    
    nameLabel.topAnchor.constraint(equalTo:self.containerView.topAnchor).isActive = true
    nameLabel.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor).isActive = true
    nameLabel.trailingAnchor.constraint(equalTo:self.containerView.trailingAnchor).isActive = true
    
    styleTitleLabel.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 10).isActive = true
    styleTitleLabel.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor).isActive = true
    
    countryImageView.widthAnchor.constraint(equalToConstant:26).isActive = true
    countryImageView.heightAnchor.constraint(equalToConstant:26).isActive = true
    countryImageView.trailingAnchor.constraint(equalTo:self.contentView.trailingAnchor, constant:-20).isActive = true
    countryImageView.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
}
