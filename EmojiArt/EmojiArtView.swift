//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by Ilya Semerukhin on 12.08.2018.
//

import UIKit

class EmojiArtView: UIView {
   
   var backgroundImage: UIImage? { didSet { setNeedsDisplay() } }
   
   override func draw(_ rect: CGRect) {
      backgroundImage?.draw(in: bounds)
   }
   
}





