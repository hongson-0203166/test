//
//  ViewController.swift
//  minitest
//
//  Created by Phạm Hồng Sơn on 03/11/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let keys = ["a", "b", "c"]
        let values = [1, 2, 3]

        var dictionary = [String: Int]()
        if keys.count == values.count {
            for i in 0..<keys.count {
                dictionary[keys[i]] = values[i]
            }
        } else {
            print("Số lượng phần tử trong hai mảng không khớp.")
        }
        for key in dictionary.keys{
            print(key)
        }
        
        // Tính tổng của các số từ 1 đến N
        let N = 10
        let sum = N * (N + 1) / 2

        if sum % 2 == 0 {
            print("Tổng của các số từ 1 đến \(N) là số chẵn.")
        } else {
            print("Tổng của các số từ 1 đến \(N) là số lẻ.")
        }
        //Tổng 2 mảng
        let array1 = [3, 1, 4, 2]
        let array2 = [0.9, 1.1, 0.5, 2.5]

        let arr1 = array1.map { Double($0) }
        
        var arr3:[Double] = []
        if arr1.count == array2.count{
            for i in 0..<arr1.count{
                arr3.append(arr1[i] + array2[i])
            }
        }
        let sortedArray = arr3.sorted()
        print(sortedArray)
       
        
        //Hình tròn giữa màn hình
        var tronView = UIView()
        tronView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        tronView.center = view.center
        tronView.layer.cornerRadius = 75
        tronView.layer.masksToBounds = true
        tronView.backgroundColor = .red
        tronView.layer.borderWidth = 2
        tronView.layer.borderColor = UIColor.red.cgColor
        tronView.alpha = 0.5
        view.addSubview(tronView)
    }
}

