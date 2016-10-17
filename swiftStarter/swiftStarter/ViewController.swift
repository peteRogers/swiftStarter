//
//  ViewController.swift
//  swiftStarter
//
//  Created by Peter Rogers on 22/09/2016.
//  Copyright © 2016 Peter Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    var displayLink:CADisplayLink!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let image = UIImage(named: "cat.jpg")
        myImageView.image = image
        displayLink = CADisplayLink(target: self, selector: #selector(update))
        displayLink.add(to: RunLoop.current, forMode: RunLoopMode.defaultRunLoopMode)
    
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func update() {
     
       
        myImageView.frame.origin.x = myImageView.frame.origin.x-1
        if(myImageView.frame.origin.x+myImageView.frame.size.width < 0){
            myImageView.frame.origin.x = self.view.frame.size.width
        }
    
    }
}

