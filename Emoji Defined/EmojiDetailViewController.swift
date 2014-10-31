//
//  EmojiDetailViewController.swift
//  Emoji Defined
//
//  Created by michael criswell on 10/30/14.
//  Copyright (c) 2014 michael criswell. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    var emoji = "💀"
    var definition = "def"
    
    override func viewDidLoad() {
        
        self.emojiLabel.text = self.emoji
        self.emojiDefinitionLabel.text = self.definition
        
    }
    
}
