import Foundation
import SourceKittenFramework

public class Resolver {

    let path: String
    let excludingList: [String]

    public init(path: String, excludingList: [String]) {
        self.path = path
        self.excludingList = excludingList
    }

    public func generateContents() -> String {
//        let fileList = File.makeFileList(path: path, excluding: excluding)
//        let structures: [[String: SourceKitRepresentable]] = fileList.compactMap { try? Structure(file: $0).dictionary }
        return path + excludingList.joined()
    }
}
