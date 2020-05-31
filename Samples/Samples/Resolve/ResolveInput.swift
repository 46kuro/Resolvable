//
//  ResolveInput.swift
//  Samples
//
//  Created by Shinji Kurosawa on 2020/05/31.
//  Copyright © 2020 Shinji Kurosawa. All rights reserved.
//

#if DEBUG

import Foundation

extension HomeViewController: Resolvable {
    static var impls: HomeViewModel!
}

extension HomeViewModel: Resolvable {
    static var impls: (APIClient)!
}

extension APIClient: Resolvable {
    static var impls: Void!
}

#endif
