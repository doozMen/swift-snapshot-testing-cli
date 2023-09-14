# swift snapshot testing + cli

Very small addition to https://github.com/pointfreeco/swift-snapshot-testing

## Use case

To update tests in a swift package from commandline rather then in code.

```
export SNAPSHOT_TESTING_UPDATE_TESTS=true &&swift test --generate-linuxmain
```

## Discussion

I wonder if it would be a nice addition and I am dissussing it here https://github.com/pointfreeco/swift-snapshot-testing/discussions/457#discussioncomment-6998554
