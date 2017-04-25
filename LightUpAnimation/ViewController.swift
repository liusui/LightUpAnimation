//
//  ViewController.swift
//  LightUpAnimation
//
//  Created by Liusui on 2017/4/25.
//  Copyright © 2017年 liusui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightUpButtton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lightUpAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func lightUpAction(_ sender: Any) {
        
    }
    
    func lightUpAnimation() {
        let emitter = CAEmitterLayer()
        emitter.emitterPosition = CGPoint(x: lightUpButtton.center.x, y: lightUpButtton.center.y - 30)
        emitter.preservesDepth = true
        let emitterCell = CAEmitterCell()
        emitterCell.velocity = 150
        emitterCell.velocityRange = 100
        emitterCell.scale = 2.0
        emitterCell.scaleRange = 0.3
        emitterCell.emissionRange = CGFloat(Double.pi/4)
        emitterCell.emissionLongitude = CGFloat(-Double.pi/2)
        emitterCell.emissionLatitude = CGFloat(Double.pi/4)
        emitterCell.alphaRange = 0.1
        emitterCell.alphaSpeed = -1.0
        emitterCell.lifetime = 1.5
        emitterCell.lifetimeRange = 1
        emitterCell.birthRate = 5
        emitterCell.contents = UIImage(named: "2")?.cgImage
        emitter.emitterCells = [emitterCell]
        view.layer.addSublayer(emitter)
    }
}

