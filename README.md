# ConfluenceKit

Swift data structures for Confluence's REST API v2.

I ran the [Create API command line app](https://github.com/CreateAPI/CreateAPI), supplying a JSON file for Confluence's REST API. ConfluenceKit is the Swift package that CreateAPI generated. I created this package so you don't have to install and run CreateAPI yourself.

## Requirements

* Swift 5.7+
* iOS 13+
* macOS 10.15+
* tvOS 13+
* watchOS 6+


## Installation

Add the package from Xcode by selecting the project in the project editor, clicking the Package Dependencies button at the top of the project editor, and clicking the Add button at the bottom of the package list.

A sheet opens. Enter the URL for ConfluenceKit, https://github.com/SwiftDevJournal/ConfluenceKit in the search field to find ConfluenceKit and add it to your project.

## Using ConfluenceKit

Import the ConfluenceKit module in any file where you want to use ConfluenceKit.

```
import ConfluenceKit
```

Click the disclosure triangle next to ConfluenceKit in Xcode's project navigator to access the Sources folder and view the data types and paths for Confluence's REST API. There are lots of entities and paths, too many to explain here.
