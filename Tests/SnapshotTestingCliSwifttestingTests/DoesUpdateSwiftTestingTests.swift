import Testing
import SnapshotTestingCli
import SnapshotTesting
import InlineSnapshotTesting

let input = """
  Maecenas faucibus mollis interdum. Integer posuere erat a 
  ante venenatis dapibus posuere velit aliquet.
  
  Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, 
  ut fermentum massa justo sit amet risus.
  
  Etiam porta sem malesuada magna mollis euismod.
  """

@Test func envIsRecording() {
  #expect(envIsRecording == false)
}

@Test func toFile() {
  assertSnapshot(of: input, as: .lines)
}

@Test func inline() {
  assertInlineSnapshot(of: input, as: .lines) {
    """
    Maecenas faucibus mollis interdum. Integer posuere erat a 
    ante venenatis dapibus posuere velit aliquet.

    Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, 
    ut fermentum massa justo sit amet risus.

    Etiam porta sem malesuada magna mollis euismod.
    """
  }
}
