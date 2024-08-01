import XCTest
import SnapshotTestingCli
import SnapshotTesting
import InlineSnapshotTesting

final class DoesUpdateTests: XCTestCaseSnapshot {
  let input = """
    Integer posuere erat a ante venenatis dapibus posuere velit aliquet. 
    Praesent commodo cursus magna, vel scelerisque nisl consectetur et. 
    Cras mattis consectetur purus sit amet fermentum. Vestibulum id 
    ligula porta felis euismod semper.
    
    Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, 
    ut fermentum massa justo sit amet risus.
    
    Etiam porta sem malesuada magna mollis euismod.
    """
  
  func testEnvIsRecording() {
    XCTAssertFalse(envIsRecording)
  }
  
  func testToFile() {
    assertSnapshot(of: input, as: .lines)
  }
  
  func testInline() {
    assertInlineSnapshotEnvIsRecording(of: input, as: .lines) {
      """
      Integer posuere erat a ante venenatis dapibus posuere velit aliquet. 
      Praesent commodo cursus magna, vel scelerisque nisl consectetur et. 
      Cras mattis consectetur purus sit amet fermentum. Vestibulum id 
      ligula porta felis euismod semper.

      Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, 
      ut fermentum massa justo sit amet risus.

      Etiam porta sem malesuada magna mollis euismod.
      """
    }
  }

}
