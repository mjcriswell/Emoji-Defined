//
//  EmojiListViewController.swift
//  Emoji Defined
//
//  Created by michael criswell on 10/30/14.
//  Copyright (c) 2014 michael criswell. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
  
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😄", "😃", "😀", "😊", "☺️", "😉", "😍", "😘", "😚", "😗", "😙", "😜", "😝", "😛", "😳", "😁", "😔", "😌", "😒", "😞", "😣", "😢", "😂", "😭", "😪", "😥", "😰", "😅", "😓", "😩", "😫", "😨", "😱", "😠", "😡", "😤", "😖", "😆", "😋", "😷", "😎", "😴", "😵", "😲", "😟", "😦", "😧", "😈", "👿", "😮", "😬", "😐", "😕", "😯", "😶", "😇", "😏", "😑", "👲", "👳", "👮", "👷", "💂", "👶", "👦", "👧", "👨", "👩", "👴", "👵", "👱", "👼", "👸", "😺", "😸", "😻", "😽", "😼", "🙀", "😿", "😹", "😾", "👹", "👺", "🙈", "🙉", "🙊", "💀", "👽", "💩", "🔥", "✨", "🌟", "💫", "💥", "💢", "💦", "💧", "💤", "💨", "👂", "👀", "👃", "👅", "👄", "👍", "👎", "👌", "👊", "✊", "✌️", "👋", "✋", "👐", "👆", "👇", "👉", "👈", "🙌", "🙏", "☝️", "👏", "💪", "🚶", "🏃", "💃", "👫", "👪", "👬", "👭", "💏", "💑", "👯", "🙆", "🙅", "💁", "🙋", "💆", "💇", "💅", "👰", "🙎", "🙍", "🙇", "🎩", "👑", "👒", "👟", "👞", "👡", "👠", "👢", "👕", "👔", "👚", "👗", "🎽", "👖", "👘", "👙", "💼", "👜", "👝", "👛", "👓", "🎀", "🌂", "💄", "💛", "💙", "💜", "💚", "❤️", "💔", "💗", "💓", "💕", "💖", "💞", "💘", "💌", "💋", "💍", "💎", "👤", "👥", "💬", "👣", "💭", "🐶", "🐺", "🐱", "🐭", "🐹", "🐰", "🐸", "🐯", "🐨", "🐻", "🐷", "🐽", "🐮", "🐗", "🐵", "🐒", "🐴", "🐑", "🐘", "🐼", "🐧", "🐦", "🐤", "🐥", "🐣", "🐔", "🐍", "🐢", "🐛", "🐝", "🐜", "🐞", "🐌", "🐙", "🐚", "🐠", "🐟", "🐬", "🐳", "🐋", "🐄", "🐏", "🐀", "🐃", "🐅", "🐇", "🐉", "🐎", "🐐", "🐓", "🐕", "🐖", "🐁", "🐂", "🐲", "🐡", "🐊", "🐫", "🐪", "🐆", "🐈", "🐩", "🐾"]
    var definitions = ["Smiling face with open mouth and smiling eyes", "Smiling face with open mouth", "Grinning face", "Smiling face with smiling eyes", "White smiling face", "Winking face", "Smiling face with heart shaped eyes", "Face throwing a kiss", "Kissing face with closed eyes", "Kissing face", "Kissing face with smiling eyes", "Face with stuck-out tongue and winking eye", "Face with stuck-out tongue and tightly-closed eyes", "Face with stuck-out tongue", "Flushed face", "Grinning face with smiling eyes", "Pensive face", "Relieved face", "Unamused face", "Disappointed face", "Persevering face", "Crying face", "Face with tears of joy", "Loudly crying face", "Sleepy face", "Disappointed but relieved face", "Face with open mouth and cold sweat", "Smiling face with open mouth and cold sweat", "Face with cold sweat", "Weary face", "Tired face", "Fearful face", "Face screaming in fear", "Angry face", "Pouting face", "Face with look of triumph", "Confounded face", "Smiling face with open mouth and tightly-closed eyes", "Face savouring delicious food", "Face with medical mask", "Smiling face with sunglasses", "Sleeping face", "Dizzy face", "Astonished face", "Worried face", "Frowning face with open mouth", "Anguished face", "Smiling face with horns", "Imp", "Face with open mouth", "Grimacing face", "Neutral face", "Confused face", "Hushed face", "Face without mouth", "Smiling face with halo", "Smirking face", "Expressionless face", "Man with Gua Pi Mao", "Man with turban", "Police officer", "Construction worker", "Guardsman", "Baby", "Boy", "Girl", "Man", "Woman", "Older man", "Older woman", "Person with blonde hair", "Baby angel", "Princess", "Smiling cat face with open mouth", "Grinning cat face with smiling eyes", "Smiling cat face with heart-shaped eyes", "Kissing cat face with closed eyes", "Cat face with wry smile", "Weary cat face", "Crying cat face", "Cat face with tears of joy", "Pouting cat face", "Japanese ogre", "Japanese goblin", "See-no-evil monkey", "Hear-no-evil monkey", "Speak-no-evil monkey", "Skull", "Extraterrestrial alien", "Pile of poo", "Fire", "Sparkles", "Glowing star", "Dizzy symbol", "Collision symbol", "Anger symbol", "Splashing sweat symbol", "Droplet", "Sleeping symbol", "Dash symbol", "Ear", "Eyes", "Nose", "Tongue", "Mouth", "Thumbs up sign", "Thumbs down sign", "Ok hand sign", "Fisted hand sign", "Raised fist", "Victory hand", "Waiving hand sign", "Raised hand", "Open hands sign", "White up pointing backhand index", "White down pointing backhand index", "White right pointing backhand index", "White left pointing backhand index", "Person raising both hands in celebration", "Person with folded hands", "White up pointing index", "Clapping hands sign", "Flexed biceps", "Pedestrian", "Runner", "Dancer", "Man and woman holding hands", "Family", "Two men holding hands", "Two women holding hands", "Kiss", "Couple with heart", "Women with bunny ears", "Face with ok gesture", "Face with no good gesture", "Information desk person", "Happy person raising one hand", "Face massage", "Haircut", "Nail polish", "Bride with veil", "Person with pouting face", "Person frowning", "Person bowing deeply", "Top hat", "Crown", "Womans hat", "Athletic shoe", "Mans shoe", "Womans sandal", "High-heeled shoe", "Womans boots", "T-shirt", "Necktie", "Womans clothes", "Dress", "Running shirt with sash", "Jeans", "Kimono", "Bikini", "Briefcase", "Handbag", "Pouch", "Purse", "Eyeglasses", "Ribbon", "Closed umbrella", "Lipstick", "Yellow heart", "Blue heart", "Purple heart", "Green heart", "Heavy black heart", "Broken heart", "Growing heart", "Beating heart", "Two hearts", "Sparkling heart", "Revolving hearts", "Heart with arrow", "Love letter", "Kiss mark", "Ring", "Gem stone", "Bust in silhouette", "Busts in silhouette", "Speech balloon", "Footprints", "Thought balloon", "Dog face", "Wolf face", "Cat face", "Mouse face", "Hamster face", "Rabbit face", "Frog face", "Tiger face", "Koala", "Bear face", "Pig face", "Pig nose", "Cow face", "Boar", "Monkey face", "Monkey", "Horse face", "Sheep", "Elephant", "Panda face", "Penguin", "Bird", "Baby chick", "Front-facing baby chick", "Hatching chick", "Chicken", "Snake", "Turtle", "Bug", "Honeybee", "Ant", "Lady beetle", "Snail", "Octopus", "Spiral shell", "Tropical fish", "Fish", "Dolphin", "Spouting whale", "Whale", "Cow", "Ram", "Rat", "Water buffalo", "Tiger", "Rabbit", "Dragon", "Horse", "Goat", "Rooster", "Dog", "Pig", "Mouse", "Ox", "Dragon face", "Blowfish", "Crocodile", "Bactrian camel", "Dromedary camel", "Leopard", "Cat", "Poodle", "Paw prints"]
    
    var emoji = "💀"
    var definition = ""
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        cell.textLabel.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.definition = self.definitions[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as EmojiDetailViewController
        detailViewController.emoji = self.emoji
        
        detailViewController.definition = self.definition
    }
    
}