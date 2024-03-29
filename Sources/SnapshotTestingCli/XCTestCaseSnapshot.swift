import SnapshotTesting
import XCTest
import InlineSnapshotTesting

/// Convenience that looks for an environment variable  SNAPSHOT_TESTING_UPDATE_TESTS that can be set to true in order to
/// have the tests update from commandline
open class XCTestCaseSnapshot: XCTestCase {
  open override class func setUp() {
    super.setUp()
    let envIsRecording = Bool(ProcessInfo.processInfo.environment["SNAPSHOT_TESTING_UPDATE_TESTS"] ?? "false") ?? false
    isRecording = envIsRecording
    diffTool = "ksdiff"
  }
}
