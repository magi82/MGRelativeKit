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
  public func leftOf(from: UIView, margin: CGFloat = 0) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.x = from.frame.origin.x - (myView.frame.size.width + margin)
    self.layoutChanged.insert(.leftOf)

    return self
  }

  public func rightOf(from: UIView, margin: CGFloat = 0) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.x = from.frame.origin.x + (from.frame.size.width + margin)
    self.layoutChanged.insert(.rightOf)

    return self
  }

  public func topOf(from: UIView, margin: CGFloat = 0) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.y = from.frame.origin.y - (myView.frame.size.height + margin)
    self.layoutChanged.insert(.topOf)

    return self
  }

  public func bottomOf(from: UIView, margin: CGFloat = 0) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.y = from.frame.origin.y + (from.frame.size.height + margin)
    self.layoutChanged.insert(.bottomOf)

    return self
  }

  public func centerHorizontalOf(from: UIView) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.x = from.frame.origin.x + (from.frame.size.width - myView.frame.size.width) * 0.5

    return self
  }

  public func centerVerticalOf(from: UIView) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.y = from.frame.origin.y + (from.frame.size.height - myView.frame.size.height) * 0.5

    return self
  }

  public func centerOf(from: UIView) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.x = from.frame.origin.x + (from.frame.size.width - myView.frame.size.width) * 0.5
    myView.frame.origin.y = from.frame.origin.y + (from.frame.size.height - myView.frame.size.height) * 0.5

    return self
  }
}
