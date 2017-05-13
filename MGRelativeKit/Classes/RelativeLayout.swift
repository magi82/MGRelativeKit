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

enum LayoutChangeType {
  case leftOf
  case rightOf
  case topOf
  case bottomOf

  case alignLeft
  case alignRight
  case alignTop
  case alignBottom

  case alignSuperLeft
  case alignSuperRight
  case alignSuperTop
  case alignSuperBottom
}

public class RelativeLayout {
  weak var myView: UIView?
  var layoutChanged: Set<LayoutChangeType>

  init(_ view: UIView) {
    self.myView = view
    self.layoutChanged = []
  }

  public func apply() {
    self.layoutChanged.removeAll()
  }
}

private var RelativeLayoutKey: Int = 0
extension UIView {
  public var relativeLayout: RelativeLayout {
    return _relativeLayoutValue
  }

  var _relativeLayoutValue: RelativeLayout {
    get {
      if let value = objc_getAssociatedObject(self,
        &RelativeLayoutKey) as? RelativeLayout {
        return value
      }

      let layout = RelativeLayout(self)
      self._relativeLayoutValue = layout
      return layout
    }
    set {
      objc_setAssociatedObject(self,
        &RelativeLayoutKey,
        newValue,
        objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
  }
}
