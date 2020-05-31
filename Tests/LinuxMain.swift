import XCTest

import InjectableTests

var tests = [XCTestCaseEntry]()
tests += InjectableTests.allTests()
XCTMain(tests)
