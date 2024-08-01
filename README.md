# swift snapshot testing + cli

Very small addition to https://github.com/pointfreeco/swift-snapshot-testing to 
record snapshot from environment value passed in cli of set in scheme.

In xcode scheme go to scheme > edit scheme > run > arguments and add  SNAPSHOT_TESTING_UPDATE_TESTS true there to update all tests

A global `envIsRecording` is also availble

that one you can use in de record of an assert. This is needed for InlineSnapshot testing
as with the new `withSnapshotTesting(record:diffTool:operation:)` the recording of inline does
not work with the proposed wrap around invoke test.

## Use case

To update tests in a swift package from commandline rather then in code.

```
export SNAPSHOT_TESTING_UPDATE_TESTS=true &&swift test --generate-linuxmain
```

## Discussion

I wonder if it would be a nice addition and I am dissussing it here https://github.com/pointfreeco/swift-snapshot-testing/discussions/457#discussioncomment-6998554
