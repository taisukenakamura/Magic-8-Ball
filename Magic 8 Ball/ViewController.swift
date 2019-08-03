//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by 中村泰輔 on 2019/08/01.
//  Copyright © 2019 icannot.t.n. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber:Int = 0
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       newBallImage()
    }
    
    
    
    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in:0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

}

