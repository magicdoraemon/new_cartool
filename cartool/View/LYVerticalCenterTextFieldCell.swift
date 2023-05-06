//
//  LYVerticalCenterTextFieldCell.swift
//  CleanMyMac
//
//  Created by liyu on 2022/3/3.
//  Copyright © 2022 liyu. All rights reserved.
//

import Cocoa

class LYVerticalCenterTextFieldCell: NSTextFieldCell {
    
    // MARK: drawingRect
    override func drawingRect(forBounds theRect: NSRect) -> NSRect {
        var newRect: NSRect  = super.drawingRect(forBounds: theRect)
        let textSize: NSSize = cellSize(forBounds: theRect)
        let heightDelta: CGFloat = newRect.size.height - textSize.height
        // 垂直居中
        if heightDelta > 0 {
            newRect.size.height = textSize.height
            newRect.origin.y += heightDelta / 2
        }
        return newRect
    }

}
