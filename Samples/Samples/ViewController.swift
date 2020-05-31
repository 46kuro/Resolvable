//
//  ViewController.swift
//  Samples
//
//  Created by Shinji Kurosawa on 2020/05/31.
//  Copyright © 2020 Shinji Kurosawa. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController, FactoryInjectable {

    struct Dependency {
        let viewModel: HomeViewModelProtocol
    }

    static func make(dependency: Dependency) -> HomeViewController {
        let viewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        viewController.dependency = dependency
        return viewController
    }

    private var dependency: Dependency!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

protocol HomeViewModelProtocol {

}

final class HomeViewModel: HomeViewModelProtocol, InitInjectable {

    struct Dependency {
        let userID: String
        let apiClient: APIClientProtocol
    }

    private let dependency: Dependency

    init(dependency: Dependency) {
        self.dependency = dependency
    }
}

protocol APIClientProtocol {
    func request() -> [String: Any]
}

final class APIClient: APIClientProtocol, InitInjectable {

    struct Dependency {

    }

    private let dependency: Dependency

    init(dependency: Dependency) {
        self.dependency = dependency
    }

    func request() -> [String : Any] {
        return [:]
    }
}
