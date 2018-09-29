//
//  SidebarNotesView.swift
//  FSNotes
//
//  Created by Oleksandr Glushchenko on 4/9/18.
//  Copyright © 2018 Oleksandr Glushchenko. All rights reserved.
//

import Cocoa

class SidebarNotesView: NSView {
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        if NSAppearance.current.isDark, #available(OSX 10.13, *) {
            NSColor(named: NSColor.Name(rawValue: "mainBackground"))!.setFill()
            __NSRectFill(dirtyRect)
        } else {
            layer?.backgroundColor = NSColor.white.cgColor
        }
    }
}
