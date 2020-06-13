import Foundation

public protocol Resolvable {
    associatedtype Impls
    static var impls: Impls! { get }
}
