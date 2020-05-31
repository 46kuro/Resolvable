# ※ This Framework is now implementing...

## Injectable

Injectable is static dependency injection framework for Swift.

Injectable aims to achieve the following primary goals.

1. High customizability and flexibility.

2. Dependency resolving logic has high independence from project code. If you unaccept auto-generating in your project, you will easily drop this framework.

## Usage

### Injectable Protocol

`Injectable` protocol provides dependency injection tree.

```Swift
public protocol Injectable {
    associatedtype Dependency
}

public protocol InitInjectable: Injectable {
    init(dependency: Dependency)
}

public protocol FactoryInjectable: Injectable {
    static func make(dependency: Dependency) -> Self
}
```

You can implement ```Injectable``` protocol to provide dependency injection.

```Swift
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
```

### Resolvable

`Resolvable` protocol enables to resolve dependency injection tree.

```Swift
public protocol Resolvable {
    associatedtype Impls
    static var impls: Impls! { get }
}
```

You need to implement ```Resolvable``` protocol to resolve dependency injection tree.

```Swift
extension HomeViewModel: Resolvable {
    static var impls: (APIClient)!
}
```

### di-resolver

If you auto-generate resolving code, you can use `di-resolver`. `di-resolver` is command line tool for auto-generating dependency injection.

`di-resolver` uses `Resolver` framework. `Resolver` provides auto-generating dependency injection code through `Injectable` and `Resolvable`.

```Sh
$ TODO
```

If you execute above shell, you will auto generate dependency resolving code.

```Swift
extension HomeViewModel.Dependency {
    init(userID: String) {
        self.userID = userID
        self.apiClient = APIClient(dependency: .init())
    }
}
```

## Installation 

### Binary

### CocoaPods

## Requirements

* Swift5.0+ / Xcode 11+

## Attribution 

This tool is affected by 

* [DIKit](https://github.com/ishkawa/DIKit)
* [Needle](https://github.com/uber/needle)
* [Dagger](https://github.com/google/dagger)

And powered by

* [SourceKitten](https://github.com/jpsim/SourceKitten)
