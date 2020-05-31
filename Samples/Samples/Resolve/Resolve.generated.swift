//
//  Resolve.generated.swift
//  Samples
//
//  Created by Shinji Kurosawa on 2020/05/31.
//  Copyright © 2020 Shinji Kurosawa. All rights reserved.
//

import Foundation

extension HomeViewController.Dependency {
    init(userID: String) {
        self.viewModel = HomeViewModel(dependency: .init(userID: userID))
    }
}

extension HomeViewModel.Dependency {
    init(userID: String) {
        self.userID = userID
        self.apiClient = APIClient(dependency: .init())
    }
}
