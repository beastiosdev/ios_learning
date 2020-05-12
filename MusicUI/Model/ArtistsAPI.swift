//
//  File.swift
//  MusicUI
//
//  Created by BeastLion on 5/11/20.
//  Copyright © 2020 beast.ios.dev. All rights reserved.
//

import Foundation

class ArtistsAPI {
  static func getLists() -> [Artists] {
    let artistsList = [
      Artists(name: "Tom odell", style: "Asian Hiphop", country: "VN"),
      Artists(name: "Tom odell1", style: "Asian Hiphop", country: "VN"),
      Artists(name: "Tom odell2", style: "Asian Hiphop", country: "VN"),
      Artists(name: "Tom odell3", style: "Asian Hiphop", country: "VN"),
      Artists(name: "Tom odell4", style: "Asian Hiphop", country: "VN"),
      Artists(name: "Tom odell5", style: "Asian JAZZ", country: "VN"),
    ]
    return artistsList
  }
}
