//
//  MyViewController.swift
//  ReactiveCocoaDemo
//
//  Created by 信息科技部 on 2019/1/4.
//  Copyright © 2019 信息科技部. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let name = "zhangsan"
        let height = "15"
        let tuple = (name1:name,height1:height)
        
        var tuple2 = tuple
//        tuple2.height1 = "17"
        print(tuple)
        print(tuple2)
        print(String.init(format: "%p", tuple2.height1))
        print(String.init(format: "%p", tuple.height1))
        
        var numArr = [1,2,3,4,5]
        let copyArr = numArr
        
        numArr[0] = 100
        print(numArr)
        print(copyArr)
    }
}
