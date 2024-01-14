//
//  AClass.swift
//  MemoryLeakTest
//
//  Created by 양시관 on 1/15/24.
//

import Foundation
import SwiftUI



class AClass {
    var aProperty: BClass?
}

class BClass {
    var bProperty: AClass?
}

class SecondVC: UIViewController {
    
    var a = AClass()
    var b = BClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    
        // 서로를 참조하여 Retain Cycle을 발생 시켰습니다.
        a.aProperty = b
        b.bProperty = a
    }
}

