import Commander
import Foundation
import Resolver

private extension String {
    func substring (range: Range<Int>) -> String {
        return String(self[self.index(self.startIndex, offsetBy: range.lowerBound)..<self.index(self.startIndex, offsetBy: range.upperBound)])
    }
}

command(
    Argument<String>("file", description: "Root Directory"),
    Option<String>("excluding", default: "", description: "Excluding Files")
) { file, excluding in
    let fileName = file.substring(range: 5..<file.count)
    let excludingList = excluding
        .trimmingTrailingCharacters(in: .whitespaces)
        .split(separator: ",")
        .map { String($0) }

    let resolver = Resolver(path: fileName, excludingList: excludingList)
    print(resolver.generateContents())
}.run()

