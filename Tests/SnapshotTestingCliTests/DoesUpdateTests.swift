import XCTest
import SnapshotTestingCli
import SnapshotTesting

final class DoesUpdateTests: XCTestCaseSnapshot {

  func testExampleUpdate() {
    let input = """
      Integer posuere erat a ante venenatis dapibus posuere velit aliquet. 
      Praesent commodo cursus magna, vel scelerisque nisl consectetur et. 
      Cras mattis consectetur purus sit amet fermentum. Vestibulum id 
      ligula porta felis euismod semper.
      """
    assertSnapshot(of: input, as: .lines)
  }

}
