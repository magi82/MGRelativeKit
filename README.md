# MGRelativeKit

<!--[![CI Status](http://img.shields.io/travis/magi82/MGRelativeKit.svg?style=flat)](https://travis-ci.org/magi82/MGRelativeKit) -->
![Swift](https://img.shields.io/badge/Swift-3.0-orange.svg)
[![Platform](https://img.shields.io/cocoapods/p/MGRelativeKit.svg?style=flat)](http://cocoapods.org/pods/MGRelativeKit)
[![Version](https://img.shields.io/cocoapods/v/MGRelativeKit.svg?style=flat)](http://cocoapods.org/pods/MGRelativeKit)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/MGRelativeKit.svg?style=flat)](http://cocoapods.org/pods/MGRelativeKit)

Simple and easy API that converts absolute to relative layout without autolayout. :sunny:<br>
MGRelativekit uses the method chaining pattern to add view layouts.<br>
It is recommended to use the 'apply' method for perfomance.<br>

## Usage Examples

- Example 1

```swift
view1.relativeLayout
  .size(width: 100, height: 100)
  .centerHorizontalSuper()
  .alignSuperTop(padding: 100)
  .apply()

view2.relativeLayout
  .size(width: 100, height: 100)
  .alignSuperRight(padding: 40)
  .alignSuperBottom(padding: 40)
  .apply()
```

<img src="https://github.com/magi82/MGRelativeKit/blob/master/Resources/example1.png?raw=true" width="180">

- Example 2

```swift
view1.relativeLayout
  .size(width: 100, height: 100)
  .centerInSuper()
  .apply()
  
view2.relativeLayout
  .sizeOf(from: view1)
  .topOf(from: view1)
  .alignLeft(from: view1, padding: 30)
  .apply()
```

<img src="https://github.com/magi82/MGRelativeKit/blob/master/Resources/example2.png?raw=true" width="180">

- Example 3

```swift
view1.relativeLayout
  .size(width: 200, height: 200)
  .centerInSuper()
  .apply()
  
view2.relativeLayout
  .sizeOf(from: view1, margin: -100)
  .centerOf(from: view1)
  .apply()
```

<img src="https://github.com/magi82/MGRelativeKit/blob/master/Resources/example3.png?raw=true" width="180">

## API Reference

```swift
// ---------------------------------------------------------------------------

// Position the current view to the left of the relative view.
func leftOf(from: UIView, margin: CGFloat = 0)

// Position the current view to the right of the relative view.
func rightOf(from: UIView, margin: CGFloat = 0)

// Position the current view to the top of the relative view.
func topOf(from: UIView, margin: CGFloat = 0)

// Position the current view to the bottom of the relative view.
func bottomOf(from: UIView, margin: CGFloat = 0)

// ---------------------------------------------------------------------------

// Position the current view to the horizontal center of the relative view.
func centerHorizontalOf(from: UIView)

// Position the current view to the vertical center of the relative view.
func centerVerticalOf(from: UIView)

// Position the current view to the center of the relative view.
func centerOf(from: UIView)

// ---------------------------------------------------------------------------

// Position the current view to the left edge of the relative view.
func alignLeft(from: UIView, padding: CGFloat = 0)

// Position the current view to the right edge of the relative view.
func alignRight(from: UIView, padding: CGFloat = 0)

// Position the current view to the top edge of the relative view.
func alignTop(from: UIView, padding: CGFloat = 0)

// Position the current view to the bottom edge of the relative view.
func alignBottom(from: UIView, padding: CGFloat = 0)

// ---------------------------------------------------------------------------

// Position the current view to the left edge of the super view.
func alignSuperLeft(padding: CGFloat = 0)

// Position the current view to the right edge of the super view.
func alignSuperRight(padding: CGFloat = 0)

// Position the current view to the top edge of the super view.
func alignSuperTop(padding: CGFloat = 0)

// Position the current view to the bottom edge of the super view.
func alignSuperBottom(padding: CGFloat = 0)

// ---------------------------------------------------------------------------

// Position the current view to the horizontal center of the super view.
func centerHorizontalSuper()

// Position the current view to the vertical center of the super view.
func centerVerticalSuper()

// Position the current view to the center of the super view.
func centerInSuper()

// ---------------------------------------------------------------------------

// Apply the same size as the super view.
func sizeOfSuper(margin: CGFloat = 0)

// Apply the same size as the relative view.
func sizeOf(from: UIView, margin: CGFloat = 0)

// Apply custom size to the current view.
func size(width: CGFloat, height: CGFloat)

// Apply the same width size as the super view.
func widthOfSuper()

// Apply the same width size as the relative view.
func widthOf(from: UIView)

// Apply custom width size to the current view.
func width(_ width: CGFloat)

// Apply the same height size as the super view.
func heightOfSuper()

// Apply the same height size as the relative view.
func heightOf(from: UIView)

// Apply custom height size to the current view.
func height(_ height: CGFloat)

// ---------------------------------------------------------------------------

// Finalize the changed layout to the current view.
func apply()
```

## Requirements

- Swift 3.0+
- Xcode 8.0+
- iOS 8.0+

## Installation

- **For iOS 8+ projects** with [CocoaPods](https://cocoapods.org):

```ruby
pod 'MGRelativeKit'
```

- **For iOS 8+ projects** with [Carthage](https://github.com/Carthage/Carthage):

```ruby
github "magi82/MGRelativeKit"
```

## Author

magi82, bkhwang82@gmail.com

## License

**MGRelativeKit** is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
