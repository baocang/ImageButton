//
//  ImageButton.swift
//  ImageButton
//
//  Created by Baocang Nie on 15/01/2017.
//  Copyright © 2017 Baocang Nie. All rights reserved.
//

import UIKit

@IBDesignable class ImageButton: UIButton {
    
    @IBInspectable open var cornerRadius: CGFloat? {
        didSet {
            if let cornerRadius = self.cornerRadius {
                self.layer.cornerRadius = cornerRadius
            }
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            if self.isHighlighted {
                self.alpha = 0.5
            } else {
                self.alpha = 1.0
            }
        }
    }
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                self.alpha = 0.5
            } else {
                self.alpha = 1.0
            }
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var titleSize = CGSize()
        var imageSize = CGSize()
        let contentSize = self.frame.size
        let contentEdgeInsets = self.contentEdgeInsets
        let titleEdgeInsets = self.titleEdgeInsets
        let imageEdgeInsets = self.imageEdgeInsets
        
        if let titleLabel = self.titleLabel {
            titleLabel.sizeToFit()
            titleSize = titleLabel.frame.size
        }
        
        if let imageView = self.imageView {
            imageSize = imageView.frame.size
        }
        
        let totalWidth = imageSize.width + titleSize.width + titleEdgeInsets.left + imageEdgeInsets.right
        let offsetLeft = (contentSize.width - totalWidth) / 2.0
        var imageFrame = CGRect(origin: CGPoint(x: offsetLeft, y: 0), size: imageSize)
        
        imageFrame.origin.y = (contentSize.height - imageSize.height - titleSize.height - contentEdgeInsets.top - contentEdgeInsets.bottom - imageEdgeInsets.top - imageEdgeInsets.bottom - titleEdgeInsets.top - titleEdgeInsets.bottom) / 2.0 + contentEdgeInsets.top + imageEdgeInsets.top
        imageFrame.origin.x = (contentSize.width - imageSize.width) / 2.0 + contentEdgeInsets.left + titleEdgeInsets.left - contentEdgeInsets.right - titleEdgeInsets.right
        
        var titleFrame = CGRect(origin: CGPoint(), size: titleSize)
        
        titleFrame.origin.y = (contentSize.height - imageSize.height - titleSize.height - contentEdgeInsets.top - contentEdgeInsets.bottom - imageEdgeInsets.top - imageEdgeInsets.bottom - titleEdgeInsets.top - titleEdgeInsets.bottom) / 2.0 + contentEdgeInsets.top + imageEdgeInsets.top + imageSize.height + imageEdgeInsets.top + imageEdgeInsets.bottom + titleEdgeInsets.top
        titleFrame.origin.x = (contentSize.width - titleSize.width) / 2.0 + contentEdgeInsets.left + titleEdgeInsets.left - contentEdgeInsets.right - titleEdgeInsets.right
        
        self.imageView?.frame = imageFrame
        self.titleLabel?.frame = titleFrame
    }
    
}
