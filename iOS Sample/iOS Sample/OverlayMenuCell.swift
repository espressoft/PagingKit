//
//  OverlayMenuCell.swift
//  iOS Sample
//
//  Copyright (c) 2017 Kazuhiro Hayashi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit
import PagingKit

class OverlayMenuCell: PagingMenuViewCell {
    static let sizingCell = UINib(nibName: "OverlayMenuCell", bundle: nil).instantiate(withOwner: self, options: nil).first as! OverlayMenuCell

    @IBOutlet weak var textLabel: UILabel!
    
    var isHighlight: Bool = false {
        didSet {
            if isHighlight {
                black(percent: 0)
            } else {
                black(percent: 1)
            }
        }
    }
    
    func black(percent: CGFloat) {
        let whiteRatio = 1 - percent
        textLabel.textColor = UIColor(white: whiteRatio, alpha: 1)
    }
    
    func highlightWithAnimation(isHighlight: Bool) {
        UIView.transition(with: textLabel, duration: 0.4, options: .transitionCrossDissolve, animations: {
            self.textLabel.textColor = isHighlight ? .white : .black
        }, completion: { (_) in
        
        })
    }
}
