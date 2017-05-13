// The MIT License (MIT)
//
// Copyright (c) 2017 ByungKook Hwang (https://magi82.github.io)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit

extension RelativeLayout {
  func updateChangedLayout(_ size: CGSize) {
    guard let myView = self.myView else { return }

    for value in self.layoutChanged {
      switch value {
      case .leftOf, .alignRight, .alignSuperRight:
        myView.frame.origin.x = myView.frame.origin.x
          - (size.width - myView.bounds.size.width) * 0.5
      case .rightOf, .alignLeft, .alignSuperLeft:
        myView.frame.origin.x = myView.frame.origin.x
          + (size.width - myView.bounds.size.width) * 0.5
      case .topOf, .alignBottom, .alignSuperBottom:
        myView.frame.origin.y = myView.frame.origin.y
          - (size.height - myView.bounds.size.height) * 0.5
      case .bottomOf, .alignTop, .alignSuperTop:
        myView.frame.origin.y = myView.frame.origin.y
          + (size.height - myView.bounds.size.height) * 0.5
      }
    }
  }

  public func sizeOfSuper(margin: CGFloat = 0) -> Self {
    guard let myView = self.myView, let superView = myView.superview else { return self }
    return size(width: superView.bounds.size.width + margin, height: superView.bounds.size.height + margin)
  }

  public func sizeOf(from: UIView, margin: CGFloat = 0) -> Self {
    return size(width: from.bounds.size.width + margin, height: from.bounds.size.height + margin)
  }

  public func size(width: CGFloat, height: CGFloat) -> Self {
    guard let myView = self.myView else { return self }
    let size = CGSize(width: width, height: height)

    updateChangedLayout(size)
    myView.bounds = CGRect(origin: CGPoint.zero, size: size)

    return self
  }

  public func widthOfSuper() -> Self {
    guard let myView = self.myView, let superView = myView.superview else { return self }
    return size(width: superView.bounds.size.width, height: myView.bounds.size.height)
  }

  public func widthOf(from: UIView) -> Self {
    guard let myView = self.myView else { return self }
    return size(width: from.bounds.size.width, height: myView.bounds.size.height)
  }

  public func width(_ width: CGFloat) -> Self {
    guard let myView = self.myView else { return self }
    let size = CGSize(width: width, height: myView.bounds.size.height)

    updateChangedLayout(size)
    myView.bounds = CGRect(origin: CGPoint.zero, size: size)

    return self
  }

  public func heightOfSuper() -> Self {
    guard let myView = self.myView, let superView = myView.superview else { return self }
    return size(width: myView.bounds.size.width, height: superView.bounds.size.height)
  }

  public func heightOf(from: UIView) -> Self {
    guard let myView = self.myView else { return self }
    return size(width: myView.bounds.size.width, height: from.bounds.size.height)
  }

  public func height(_ height: CGFloat) -> Self {
    guard let myView = self.myView else { return self }
    let size = CGSize(width: myView.bounds.size.width, height: height)

    updateChangedLayout(size)
    myView.bounds = CGRect(origin: CGPoint.zero, size: size)

    return self
  }
}
