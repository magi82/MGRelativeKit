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
  public func alignLeft(from: UIView, padding: CGFloat = 0) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.x = from.frame.origin.x + padding
    self.layoutChanged.insert(.alignLeft)

    return self
  }

  public func alignRight(from: UIView, padding: CGFloat = 0) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.x = (from.frame.origin.x + from.frame.size.width)
                              - (myView.frame.size.width + padding)
    self.layoutChanged.insert(.alignRight)

    return self
  }

  public func alignTop(from: UIView, padding: CGFloat = 0) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.y = from.frame.origin.y + padding
    self.layoutChanged.insert(.alignTop)

    return self
  }

  public func alignBottom(from: UIView, padding: CGFloat = 0) -> Self {
    guard let myView = self.myView else { return self }

    myView.frame.origin.y = (from.frame.origin.y + from.frame.size.height)
                              - (myView.frame.size.height + padding)
    self.layoutChanged.insert(.alignBottom)

    return self
  }
}
