import Foundation
import InlineSnapshotTesting

public func assertInlineSnapshotEnvIsRecording<Value>(
  of value: @autoclosure () throws -> Value?,
  as snapshotting: Snapshotting<Value, String>,
  message: @autoclosure () -> String = "",
  record isRecording: Bool? = envIsRecording,
  timeout: TimeInterval = 5,
  syntaxDescriptor: InlineSnapshotSyntaxDescriptor = InlineSnapshotSyntaxDescriptor(),
  matches expected: (() -> String)? = nil,
  fileID: StaticString = #fileID,
  file filePath: StaticString = #filePath,
  function: StaticString = #function,
  line: UInt = #line,
  column: UInt = #column
) {
  assertInlineSnapshot(
    of: try value(),
    as: snapshotting,
    message: message(),
    record: isRecording,
    timeout: timeout,
    syntaxDescriptor: syntaxDescriptor,
    matches: expected,
    fileID: fileID,
    file: filePath,
    function: function,
    line: line,
    column: column
  )
}
