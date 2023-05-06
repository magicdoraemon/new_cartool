//
//  CustomWindow.swift
//  ProcessDemo
//
//  Created by Jason on 2018/11/6.
//  Copyright © 2018 Jason. All rights reserved.
//

import Cocoa

class CustomWindow: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        window?.level = .normal
        // 设置最小窗口尺寸
        window?.minSize = CGSize(width: 500, height: 300)
        window?.isMovable = true
        window?.isMovableByWindowBackground = true
        // window?.isOpaque = false
        // window?.backgroundColor = .clear
        window?.center()
    }

}
