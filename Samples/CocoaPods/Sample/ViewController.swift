//
//  ViewController.swift
//  Sample
//
//  Created by Shinji Kurosawa on 2020/06/13.
//  Copyright © 2020 Shinji Kurosawa. All rights reserved.
//

import Resolvable
import UIKit

final class ViewController: UIViewController, FactoryInjectable {

    struct Dependency {

    }

    static func make(dependency: Dependency) -> ViewController {
        let vc = UIStoryboard(name: "ViewController", bundle: nil).instantiateInitialViewController() as! ViewController
        vc.dependency = dependency
        return vc
    }

    var dependency: Dependency!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
