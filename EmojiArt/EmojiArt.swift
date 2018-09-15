//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Ilya Semerukhin on 15.09.2018.
//

import Foundation

struct EmojiArt {
   
   var url: URL
   var emojis = [EmojiInfo]()
   
   struct EmojiInfo {
      let x: Int
      let y: Int
      let text: String
      let size: Int
   }
   
   init(url: URL, emojis: [EmojiInfo]) {
      self.url = url
      self.emojis = emojis
   }
   
}






