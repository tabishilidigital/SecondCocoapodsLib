//
//  ViewController.swift
//  SecondCocoapodsLib
//
//  Created by Tabish Gul on 12/27/2021.
//  Copyright (c) 2021 Tabish Gul. All rights reserved.
//

import UIKit
import SecondCocoapodsLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let log = Logger()
        log.testFunc()
        let frameworkBundle = Bundle(for: Logger.self)
        guard let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle") else {
            return
        }
        let resourceBundle = Bundle(url: URL(fileURLWithPath: path))
        guard let image = UIImage(named: "snoker.jpeg", in: resourceBundle, compatibleWith: nil) else {
            return
        }
        print(image)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.frame = view.frame
        view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

