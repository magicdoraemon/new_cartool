//
//  LYWindow.swift
//  CleanMyMac
//
//  Created by liyu on 2023/5/1.
//

import Cocoa

class LYWindow: NSWindow {

    override func displayIfNeeded() {
        super.displayIfNeeded()
        // 手动设置左上角系统Button位置
        let closeButton = standardWindowButton(.closeButton)
        let miniaturizeButton = standardWindowButton(.miniaturizeButton)
        let zoomButton = standardWindowButton(.zoomButton)
        
        let marginTop: CGFloat = 8
        let marginLeft: CGFloat = 10
        let margin: CGFloat = 20
        
        // 关闭自动布局
        closeButton!.translatesAutoresizingMaskIntoConstraints = false
        miniaturizeButton!.translatesAutoresizingMaskIntoConstraints = false
        zoomButton!.translatesAutoresizingMaskIntoConstraints = false

        let leftContraint1 = NSLayoutConstraint(item: closeButton! as NSButton, attribute: .left, relatedBy: .equal, toItem: closeButton?.superview, attribute: .left, multiplier: 1.0, constant: marginLeft)
        let topContraint1 = NSLayoutConstraint(item: closeButton! as NSButton, attribute: .top, relatedBy: .equal, toItem: closeButton?.superview, attribute: .top, multiplier: 1.0, constant: marginTop)
        leftContraint1.isActive = true
        topContraint1.isActive = true

        let leftContraint2 = NSLayoutConstraint(item: miniaturizeButton! as NSButton, attribute: .left, relatedBy: .equal, toItem: closeButton, attribute: .left, multiplier: 1.0, constant: margin)
        let topContraint2 = NSLayoutConstraint(item: miniaturizeButton! as NSButton, attribute: .top, relatedBy: .equal, toItem: miniaturizeButton?.superview, attribute: .top, multiplier: 1.0, constant: marginTop)
        leftContraint2.isActive = true
        topContraint2.isActive = true
        
        let leftContraint3 = NSLayoutConstraint(item: zoomButton! as NSButton, attribute: .left, relatedBy: .equal, toItem: miniaturizeButton, attribute: .left, multiplier: 1.0, constant: margin)
        let topContraint3 = NSLayoutConstraint(item: zoomButton! as NSButton, attribute: .top, relatedBy: .equal, toItem: zoomButton?.superview, attribute: .top, multiplier: 1.0, constant: marginTop)
        leftContraint3.isActive = true
        topContraint3.isActive = true
    }
       
    override func close() {
        super.close()
    }
    
}
