//
//  ViewController.swift
//  LightUpAnimation
//
//  Created by Liusui on 2017/4/25.
//  Copyright © 2017年 liusui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lightUpAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func lightUpAnimation() {
        let emitter = CAEmitterLayer()
        emitter.emitterPosition = CGPoint(x: view.bounds.width * 0.5, y: view.bounds.height - 20)
        emitter.preservesDepth = true
        let emitterCell = CAEmitterCell()
        emitterCell.velocity = 150
        emitterCell.velocityRange = 100
        emitterCell.scale = 2.0
        emitterCell.scaleRange = 0.3
        emitterCell.emissionRange = CGFloat(Double.pi/4)
        emitterCell.emissionLongitude = CGFloat(-Double.pi/2)
        emitterCell.emissionLatitude = CGFloat(Double.pi/4)
        emitterCell.lifetime = 3
        emitterCell.lifetimeRange = 1.5
        emitterCell.birthRate = 10
        emitterCell.contents = UIImage(named: "2")?.cgImage
        emitter.emitterCells = [emitterCell]
        view.layer.addSublayer(emitter)
    }
}

