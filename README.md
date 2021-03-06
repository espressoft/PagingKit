![img](https://user-images.githubusercontent.com/18320004/31583441-eb6ff894-b1d6-11e7-943a-675d6460919a.png)


[![Platform](https://img.shields.io/cocoapods/p/PagingKit.svg?style=flat)](http://cocoapods.org/pods/PagingKit)
![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg)
![Swift 3.2](https://img.shields.io/badge/Swift-3.2-orange.svg)
[![License](https://img.shields.io/cocoapods/l/PagingKit.svg?style=flat)](http://cocoapods.org/pods/PagingKit)
[![Version](https://img.shields.io/cocoapods/v/PagingKit.svg?style=flat)](http://cocoapods.org/pods/PagingKit)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Build Status](https://www.bitrise.io/app/379f18aee0f4a759/status.svg?token=bA10yjS1flU0aal7TULGfQ&branch=master)](https://www.bitrise.io/app/379f18aee0f4a759)

PagingKit provides customizable menu & content UI. It has more flexible layout and design than the other libraries.

# What's this?
There are many libraries providing "Paging UI" which have menu and content area.
They are convenient but not customizable because your app has to be made compatible with the libraries' layout and view components.
When your philosophy doesn't fit the libraries, you need to fork them or find another one. 

PagingKit has more flexible layout and design than the other libraries.
You can construct "Menu" and "Content" UI, and they work together. That's all features this library provides.
You can fit any design to your apps as you like.

![paging_sample](https://user-images.githubusercontent.com/18320004/31575892-35860ae2-b12b-11e7-9525-1825c69b094f.gif)

## Customized layout 
You can align views as you like.

| changing position | placing a view between content and menu | add floating button on right-side |
|:------------:|:------------:|:------------:|
| ![sample_5](https://user-images.githubusercontent.com/18320004/31857631-08683bf4-b71e-11e7-83c4-ee4e942b5ea1.gif) | ![sample_4](https://user-images.githubusercontent.com/18320004/31857630-075948c0-b71e-11e7-9ea7-3d490c733b7f.gif) | ![sample6](https://user-images.githubusercontent.com/18320004/33793722-f9806f46-dcff-11e7-9909-a9f87e9ef4a0.gif) |

## Customized menu design
You can customize menu as you like.

| tag like menu | text highlighted menu | underscore menu | App Store app like indicator |
|:------------:|:------------:|:------------:|:------------:|
| ![sample_3](https://user-images.githubusercontent.com/18320004/31857535-d8b6965a-b71b-11e7-928d-46375c2cfb7b.gif) | ![sample_2](https://user-images.githubusercontent.com/18320004/31857534-d7b294de-b71b-11e7-923c-f79fe9335b1f.gif) | ![sample_1](https://user-images.githubusercontent.com/18320004/31857533-d69720ba-b71b-11e7-9401-534596dbb76d.gif) | ![indicator](https://user-images.githubusercontent.com/18320004/32141748-3e6c4fc6-bccb-11e7-8a6a-0286982f938b.gif) |



# Feature
- [x] easy to construct Paging UI
- [x] customizable layout and design
- [x] UIKit like API
- [x] Supporting iPhone, iPad and iPhone X

# Requirements
+ iOS 8.0+
+ Xcode 9.0+
+ Swift 4.0 (3.2)

# Installation

### CocoaPods
+ Install CocoaPods
```
> gem install cocoapods
> pod setup
```
+ Create Podfile
```
> pod init
```
+ Edit Podfile
```ruby
target 'YourProject' do
  use_frameworks!

  pod "PagingKit" # add

  target 'YourProject' do
    inherit! :search_paths
  end

  target 'YourProject' do
    inherit! :search_paths
  end

end
```

+ Install

```
> pod install
```
open .xcworkspace

## Carthage
+ Install Carthage from Homebrew
```
> ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
> brew update
> brew install carthage
```
+ Move your project dir and create Cartfile
```
> touch Cartfile
```
+ add the following line to Cartfile
```
github "kazuhiro4949/PagingKit"
```
+ Create framework
```
> carthage update --platform iOS
```

+ In Xcode, move to "Genera > Build Phase > Linked Frameworks and Library"
+ Add the framework to your project
+ Add a new run script and put the following code
```
/usr/local/bin/carthage copy-frameworks
```
+ Click "+" at Input file and Add the framework path
```
$(SRCROOT)/Carthage/Build/iOS/PagingKit.framework
```
+ Write Import statement on your source file
```
import PagingKit
```

# Getting Started

There are some samples in this library.

https://github.com/kazuhiro4949/PagingKit/tree/master/iOS%20Sample/iOS%20Sample

You can fit PagingKit into your project as the samples do. Check out this repository and open the workspace.

PagingKit has two essential classes.
- PagingMenuViewController
- PagingContentViewController

PagingMenuViewController provides interactive menu for each content. PagingContentViewController provides the contents on a scrollview.

If you will make a new UI which contains PagingKit, refer the following 4 steps.

- 1. Add PagingMenuViewController & PagingContentViewController
- 2. Assign them to properties
- 3. Create menu UI
- 4. display data
- 5. Synchronize Menu and Content view controllers

## 1. Add PagingMenuViewController & PagingContentViewController
First, add PagingMenuViewController & PagingContentViewController on container view with Stroyboard.

### 1. Put container views on Storyboard
Put container views on stroyboard for each the view controllers.

<img width="1417" alt="2017-08-25 16 33 51" src="https://user-images.githubusercontent.com/18320004/29704102-491f0e72-89b3-11e7-9d69-7988969ef18e.png">

### 2. Change class names

input PagingMenuViewController on custom class setting.
<img width="1418" alt="2017-08-25 16 36 36" src="https://user-images.githubusercontent.com/18320004/29704183-a59ab390-89b3-11e7-9e72-e98ee1e9abc0.png">

input PagingContentViewController on custom class setting.

<img width="1415" alt="2017-08-25 16 36 54" src="https://user-images.githubusercontent.com/18320004/29704184-a669f344-89b3-11e7-91b6-90669fa2190f.png">

## 2. Assign them to properties

Assign them on code of the container view controller.

### 1. Declare properties for the view controllers 
Declare properties in container view controller.
```swift
class ViewController: UIViewController {
    
    var menuViewController: PagingMenuViewController!
    var contentViewController: PagingContentViewController!
```

### 2. override prepare(segue:sender:) and assign the view controllers
Assigin view controllers to each the property on ```prepare(segue:sender:)```.

```swift
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? PagingMenuViewController {
            menuViewController = vc
        } else if let vc = segue.destination as? PagingContentViewController {
            contentViewController = vc
        }
    }
```

### 3. Build App
Change menu color.
<img width="1097" alt="2017-08-25 17 47 58" src="https://user-images.githubusercontent.com/18320004/29706662-922732ac-89bd-11e7-8969-bd6fbe394a8a.png">

Build and check the current state.

<img width="487" alt="2017-08-25 17 47 29" src="https://user-images.githubusercontent.com/18320004/29706651-84749258-89bd-11e7-9239-6919a0175a17.png">

It shows a container view controller that has PagingMenuViewController and PagingContentViewController.

## 3. Create menu UI

Next, you needs to prepare the menu elements.

### 1. Inherite PagingMenuViewCell and create custom cell

PagingKit has PagingMenuViewCell. PagingMenuViewController uses it to construct each menu element.

```swift
import UIKit
import PagingKit

class MenuCell: PagingMenuViewCell {
    @IBOutlet weak var titleLabel: UILabel!
}
```

<img width="1414" alt="2017-08-25 16 56 56" src="https://user-images.githubusercontent.com/18320004/29704850-7b877cd4-89b6-11e7-98c9-48eb94646291.png">


### 2. Inherite PagingFocusView and create custom view

PagingKit has PagingFocusView. PagingMenuViewController uses it to point the current focusted menu.

<img width="1420" alt="2017-08-25 16 59 07" src="https://user-images.githubusercontent.com/18320004/29704919-bd3d8f06-89b6-11e7-88dc-c8546979dbde.png">


### 3. register the above views to PagingMenuViewController

```swift
class ViewController: UIViewController {
    
    var menuViewController: PagingMenuViewController!
    var contentViewController: PagingContentViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuViewController.register(nib: UINib(nibName: "MenuCell", bundle: nil), forCellWithReuseIdentifier: "MenuCell")
        menuViewController.registerFocusView(nib: UINib(nibName: "FocusView", bundle: nil))
    }
```

## 4. display data

Then, implement the data sources to display contents. They are a similar to UITableViewDataSource.

### 1. prepare data

```swift
class ViewController: UIViewController {
    static var viewController: (UIColor) -> UIViewController = { (color) in
       let vc = UIViewController()
        vc.view.backgroundColor = color
        return vc
    }
    
    var dataSource = [(menuTitle: "test1", vc: viewController(.red)), (menuTitle: "test2", vc: viewController(.blue)), (menuTitle: "test3", vc: viewController(.yellow))]
```

### 2. set menu data source

Return number of menus, menu widthes and PagingMenuViewCell objects.

```swift
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? PagingMenuViewController {
            menuViewController = vc
            menuViewController.dataSource = self // <- set menu data source
        } else if let vc = segue.destination as? PagingContentViewController {
            contentViewController = vc
        }
    }
}

extension ViewController: PagingMenuViewControllerDataSource {
    func numberOfItemsForMenuViewController(viewController: PagingMenuViewController) -> Int {
        return dataSource.count
    }
    
    func menuViewController(viewController: PagingMenuViewController, widthForItemAt index: Int) -> CGFloat {
        return 100
    }
    
    func menuViewController(viewController: PagingMenuViewController, cellForItemAt index: Int) -> PagingMenuViewCell {
        let cell = viewController.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: index) as! MenuCell
        cell.titleLabel.text = dataSource[index].menuTitle
        return cell
    }
}
```

### 3. configure content data source

Return the number of contents and view controllers.

```swift
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? PagingMenuViewController {
            menuViewController = vc
            menuViewController.dataSource = self
        } else if let vc = segue.destination as? PagingContentViewController {
            contentViewController = vc
            contentViewController.dataSource = self // <- set content data source
        }
    }
}

extension ViewController: PagingContentViewControllerDataSource {
    func numberOfItemsForContentViewController(viewController: PagingContentViewController) -> Int {
        return dataSource.count
    }
    
    func contentViewController(viewController: PagingContentViewController, viewControllerAt index: Int) -> UIViewController {
        return dataSource[index].vc
    }
}
```

### 4. load UI

Call reloadData() methods with starting point.

```swift
    override func viewDidLoad() {
        super.viewDidLoad()
        //...
        //...
        menuViewController.reloadData()
        contentViewController.reloadData()
    }
```

Build and display data source.

<img width="487" alt="2017-08-25 17 54 30" src="https://user-images.githubusercontent.com/18320004/29706950-7e1b41a8-89be-11e7-8bb2-fc90afbe11f7.png">

## 5. Synchronize Menu and Content view controllers

Last, synchronize user interactions between Menu and Content.

### 1. set menu delegate

```swift
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? PagingMenuViewController {
            menuViewController = vc
            menuViewController.dataSource = self
            menuViewController.delegate = self // <- set menu delegate
        } else if let vc = segue.destination as? PagingContentViewController {
            contentViewController = vc
            contentViewController.dataSource = self
        }
    }
}
```

Implement menu delegate to handle the event. It is a similar to UITableViewDelegate. You need to implement scroll method of PagingContentViewController in the delegate method.

```swift

extension ViewController: PagingMenuViewControllerDelegate {
    func menuViewController(viewController: PagingMenuViewController, didSelect page: Int, previousPage: Int) {
        contentViewController.scroll(to: page, animated: true)
    }
}
```

### 2. set content delegate

```swift
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? PagingMenuViewController {
            menuViewController = vc
            menuViewController.dataSource = self
            menuViewController.delegate = self
        } else if let vc = segue.destination as? PagingContentViewController {
            contentViewController = vc
            contentViewController.dataSource = self
            contentViewController.delegate = self // <- set content delegate
        }
    }
}
```

Implement content delegate to handle the event. It is similar to UIScrollViewDelegate. You need to implement the scroll event of PagingMenuViewController. "percent" is distance from "index" argument to the right-side page index.

```swift
extension ViewController: PagingContentViewControllerDelegate {
    func contentViewController(viewController: PagingContentViewController, didManualScrollOn index: Int, percent: CGFloat) {
        menuViewController.scroll(index: index, percent: percent, animated: false)
    }
}
```

That's it.

# Tips
## Build-in UI components
```TitleLabelMenuViewCell``` and ```UnderlineFocusView``` are build-in UI components. You don't need to make custom PagingMenuViewCell and PagingFoucsView, when your App require simple UI. 

[SimpleViewController](https://github.com/kazuhiro4949/PagingKit/blob/master/iOS%20Sample/iOS%20Sample/SimpleViewController.swift) in this repository helps you to understand usege. 

## Focused Cell Style
```PagingMenuViewCell``` has ```isSelected``` property. ```PagingMenuView``` updates the property if the focusing cell is changed. You can change the style　ｂｙ overriding the property.

```swift
class CustomCell: PagingMenuViewCell {
    override public var isSelected: Bool {
        didSet {
            if isSelected {
                titleLabel.textColor = focusColor
            } else {
                titleLabel.textColor = normalColor
            }
        }
    }
}
```

## Cell Alignment
```PagingMenuViewController``` has an utility method to align cellls. 

https://github.com/kazuhiro4949/PagingKit/blob/master/PagingKit/PagingMenuViewController.swift#L110

If you want to align cells on the center, the following code will help you.

```swift
pagingMenuViewController.cellAligenment = .center
```

## Underline to have the same width as each title label

There is no feature to adjust the underline width in PagingKit.
But you can adjust by yourself on your view controller. 

How to make the UI:

First, you need to make a subclasses of PagingFocusView as follows.
The view for underline has a constant width constraint (required priority) and the same width constraint as the parent view width (high priority).

<img width="487" alt="2018-06-15 22 23 20" src="https://user-images.githubusercontent.com/18320004/41470284-1bd98cc4-70eb-11e8-9263-0fc32d5226fe.png">

Connect IBOutliet with the constant width constraint.

```swift
class FocusView: UIView {
    @IBOutlet weak var underlineWidthConstraint: NSLayoutConstraint!
}
```

The class inherited to PagingMenuViewCell has the center constraints and.

<img width="487" alt="2018-06-15 22 21 35" src="https://user-images.githubusercontent.com/18320004/41470293-22cfad06-70eb-11e8-8a7a-52ad8774e3ca.png">

Then, binds the subclass of PagingFocusView as property on your view controller.

```swift
var focusView: FocusView! // <- binds focusview
override func viewDidLoad() {     
    focusView = UINib(nibName: "FocusView", bundle: nil).instantiate(withOwner: self, options: nil).first as! FocusView
    menuViewController?.registerFocusView(view: focusView)
```

Finally, set the underline width on each the paging event.

```swift
    /// adjust focusView width
    ///
    /// - Parameters:
    ///   - index: current focused left index
    ///   - percent: percent of left to right
    func adjustfocusViewWidth(index: Int, percent: CGFloat) {
        guard let leftCell = menuViewController?.cellForItem(at: index) as? LabelCell else {
            return // needs to have left cell
        }
        guard let rightCell = menuViewController?.cellForItem(at: index + 1) as? LabelCell else {
            focusView.underlineWidthConstraint.constant = leftCell.titleLabel.bounds.width
            return // If the argument to cellForItem(at:) is last index, rightCell is nil
        }
        // calculate the difference
        let diff = (rightCell.titleLabel.bounds.width - leftCell.titleLabel.bounds.width) * percent
        focusView.underlineWidthConstraint.constant = leftCell.titleLabel.bounds.width + diff
    }
```

```swift
extension SimpleViewController: PagingContentViewControllerDelegate {
    func contentViewController(viewController: PagingContentViewController, didManualScrollOn index: Int, percent: CGFloat) {
        menuViewController?.scroll(index: index, percent: percent, animated: false)
        adjustfocusViewWidth(index: index, percent: percent) // <- adjusts underline view width
    }
}
```

<img width="200" alt="2018-06-15 22 21 35" src="https://user-images.githubusercontent.com/18320004/41470870-e369f890-70ec-11e8-8065-f8b26352ef77.gif">

## Controlling PagingContentViewController's scroll

PagingContentViewController uses UIScrollView to scroll the contents.

You can disable the pan gesture as follows.

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    // contentViewController is a PagingContentViewController's object.
    // ...
    pagingContentView.scrollView.isScrollEnabled = false
}
```

Set false to “delaysContentTouches” in the scroll view when you have some controls (e.g. UISlider) in your contents.

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    // contentViewController is a PagingContentViewController's object.
    // ...
    contentViewController.scrollView.delaysContentTouches = false
}
```

## Code Snippets
There are some snippets to save your time. 

- https://github.com/kazuhiro4949/PagingKit/tree/master/tools/CodeSnippets

Install them on ```~/Library/Developer/Xcode/UserData/CodeSnippets/``` and restart Xcode. You can see the snippets on the right pane.

![1 -04-2018 16-33-59](https://user-images.githubusercontent.com/18320004/34553858-1e8a4876-f16d-11e7-97e1-605fa68896fd.gif)



# Class Design
There are some design policy in this library.

- The behavior needs to be specified by the library.
- The layout should be left to developers.
- Arrangement of the internal components must be left to developers.

Because of that, PagingKit has responsiblity for the behavior. But it doesn't specify a structure of the components.
PagingKit favours composition over inheritance. This figure describes overview of the class diagram.

<img src="https://user-images.githubusercontent.com/18320004/38431789-628100e8-3a00-11e8-8ae2-30cd6122ec9a.png" width="500" />

# License

Copyright (c) 2017 Kazuhiro Hayashi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
