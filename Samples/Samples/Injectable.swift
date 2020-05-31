//
//  Injectable.swift
//  Samples
//
//  Created by Shinji Kurosawa on 2020/05/31.
//  Copyright © 2020 Shinji Kurosawa. All rights reserved.
//

import Foundation

public protocol Injectable {
    associatedtype Dependency
}

public protocol InitInjectable: Injectable {
    init(dependency: Dependency)
}

public protocol FactoryInjectable: Injectable {
    static func make(dependency: Dependency) -> Self
}

public protocol PropertyInjectable: Injectable {
    var dependency: Dependency! { get }
}

public protocol SharedInjectable: PropertyInjectable {
    static var shared: Self { get }
}

public protocol Resolvable {
    associatedtype Impls
    static var impls: Impls! { get }
}
