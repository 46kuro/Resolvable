import Foundation
import SourceKittenFramework

extension File {

    /// Reference: [DIKit](https://github.com/ishkawa/DIKit)
    static func makeFileList(path: String, excluding: [String]) -> [File] {
        let exclusions = excluding.map { $0.last == "/" ? $0 : $0 + "/" }
        let url = URL(fileURLWithPath: path)
        let fileManager = FileManager.default

        var files = [] as [File]
        var isDirectory = false as ObjCBool
        if fileManager.fileExists(atPath: url.path, isDirectory: &isDirectory) {
            if isDirectory.boolValue {
                let enumerator = fileManager.enumerator(atPath: path)
                while let subpath = enumerator?.nextObject() as? String {
                    if exclusions.contains(where: { subpath.hasPrefix($0) }) { continue }

                    let url = url.appendingPathComponent(subpath)
                    if url.pathExtension == "swift", let file = File(path: url.path) // , file.contents.contains("DIKit")
                        {
                        files.append(file)
                    }
                }
            } else if let file = File(path: url.path) {
                files.append(file)
            }
        }

        return files
    }
}
