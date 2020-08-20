//
//  ViewController.swift
//  KeyboardInputDemo2
//
//  Created by Tim Haug on 10.06.20.
//  Copyright © 2020 timh1004. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// https://www.hackingwithswift.com/example-code/uikit/how-to-detect-keyboard-input-using-pressesbegan-and-pressesended
    
    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
//        guard let keys = event?.allPresses.compactMap({ $0.key?.characters }).sorted() else { return }
//        print("Keys")
//        for element in keys {
//          print(element, terminator: " ")
//        }
        
        guard let key = presses.first?.key else { return }
//        print(key.keyCode, key.characters, key.charactersIgnoringModifiers, key.modifierFlags)
        print(key)
        
        super.pressesBegan(presses, with: event)
    }
    
    override func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        guard let key = presses.first?.key else { return }
//        print(key)
//        print(key.keyCode, key.characters, key.charactersIgnoringModifiers, key.modifierFlags)
//        print(key.characters)
        
        super.pressesEnded(presses, with: event)
    }

}

