//
//  ViewController.swift
//  MHVerifyCodeView
//
//  Created by feaskters on 04/30/2020.
//  Copyright (c) 2020 feaskters. All rights reserved.
//

import UIKit
import MHVerifyCodeView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let count = 6
        let spacing: CGFloat = 10
        let height: CGFloat = 50
        let width: CGFloat = height * CGFloat(count) + spacing * CGFloat(count - 1)
        
        let verifyCodeView = MHVerifyCodeView.init { (vc) in
            let alert = UIAlertController.init(title: "验证码", message: vc, preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "确定", style: .cancel, handler: nil))
            self.show(alert, sender: nil)
        }
        verifyCodeView.verifyCount = count
        
        verifyCodeView.spacing = spacing
        
        verifyCodeView.frame = CGRect(x: (UIScreen.main.bounds.width - width) / 2, y: (UIScreen.main.bounds.height - height) / 2, width: width, height: height)
        
        self.view.addSubview(verifyCodeView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

