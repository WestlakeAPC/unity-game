//
//  main.swift
//  UnityGame
//
//  Created by Eli Bradley on 4/16/17.
//  Copyright © 2017 Eli Bradley. All rights reserved.
//

import Foundation
import UIKit

// overriding @UIApplicationMain
// http://stackoverflow.com/a/24021180/1060314

custom_unity_init(CommandLine.argc, CommandLine.unsafeArgv)
UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, NSStringFromClass(UIApplication), NSStringFromClass(AppDelegate))
