import SnapshotTesting
import XCTest
import InlineSnapshotTesting

public let envIsRecording = Bool(ProcessInfo.processInfo.environment["SNAPSHOT_TESTING_UPDATE_TESTS"] ?? "false") ?? false

/// Convenience that looks for an environment variable  SNAPSHOT_TESTING_UPDATE_TESTS that can be set to true in order to
/// have the tests update from commandline
///
/// > Warning: Does not work for inline testing.
///
/// See: ``assertInlineSnapshotEnvIsRecording`` for  a convenience wrapper to use.
open class XCTestCaseSnapshot: XCTestCase {
  open override func invokeTest() {
    withSnapshotTesting(record: envIsRecording ? .failed : .missing) {
      super.invokeTest()
    }
  }
}
