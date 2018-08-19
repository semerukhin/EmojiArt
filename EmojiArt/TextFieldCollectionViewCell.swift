//
//  TextFieldCollectionViewCell.swift
//  EmojiArt
//
//  Created by Ilya Semerukhin on 19.08.2018.
//

import UIKit

class TextFieldCollectionViewCell: UICollectionViewCell, UITextFieldDelegate {
   
   @IBOutlet weak var textField: UITextField! {
      didSet {
         textField.delegate = self
      }
   }
   
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
      textField.resignFirstResponder()
      return true
   }
   
}





