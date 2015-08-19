# GNAlertConveniences

[![Version](https://img.shields.io/cocoapods/v/GNAlertConveniences.svg?style=flat)](http://cocoapods.org/pods/GNAlertConveniences)
[![License](https://img.shields.io/cocoapods/l/GNAlertConveniences.svg?style=flat)](http://cocoapods.org/pods/GNAlertConveniences)
[![Platform](https://img.shields.io/cocoapods/p/GNAlertConveniences.svg?style=flat)](http://cocoapods.org/pods/GNAlertConveniences)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

GNAlertConveniences extends UIViewController with a few handy methods to help present basic UIAlertControllers without all the boilerplate code. 
**_Note:_** The button titles come localized, but the UIAlertController title and message must be localized before being passed into these methods.

## Methods

```swift
public func showAlertControllerWithTitle(title:String, message:String, okActionBlock:GNVoidCompletionBlock? = nil)
```

This will show a UIAlertController with one button titled "Ok". This button calls the okActionBlock.

```swift
public func showAlertControllerWithTitle(title:String, message:String, okActionBlock:GNVoidCompletionBlock, cancelActionBlock:GNVoidCompletionBlock? = nil)
```

This will show a UIAlertController with two buttons. One of these buttons is titled "Ok", and the other is titled "Cancel". This is useful when the user is presented the controller as a means of either confirming or cancelling an action. The okActionBlock is called when the "Ok" button is pressed and the cancelActionBlock is called when the "Cancel" button is pressed.

```swift
public func showAlertControllerWithTitle(title:String, message:String, actions:[UIAlertAction])
```

This shows a UIAlertController with the designated title, message, and actions. This function is ultimately used by the previous two, but there was really no harm in having it as a public function as well. 

## To Do

- [ ] Write simple convenience methods for ActionSheet style UIAlertControllers.

## Installation

GNAlertConveniences is available through [CocoaPods](http://cocoapods.org). 
To install it, simply add the following lines to your Podfile:

```ruby
use_frameworks!
pod "GNAlertConveniences"
```

## Author

Gonzalo Nunez, gonzi@tcpmiami.com

## License

GNAlertConveniences is available under the MIT license. See the LICENSE file for more info.
