//
//  main.swift
//  Fugu15
//
//  Created by Linus Henze on 2022-07-29.
//

import Foundation
import Fugu15KernelExploit

if CommandLine.arguments.count > 1 {
    switch CommandLine.arguments[1] {
    case "removeFuguInstallPlist":
        let path = Bundle.main.bundleURL
        
        let plist = path.appendingPathComponent("FuguInstall.plist")
        try? FileManager.default.removeItem(at: plist)
        
        exit(0)
        
    default:
        break
    }
}

Fugu15.mainHook()

Fugu15App.main()
