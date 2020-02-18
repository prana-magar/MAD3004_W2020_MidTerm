//
//  main.swift
//  clouser
//
//  Created by Prakash on 14/02/20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation


//func add(a: Int, b: Int){
//    print(a+b)
//}
//
//var f: (Int, Int) -> Void
//f = add
//f(4,5)
//
//func nAdder(n: Int) -> ((Int)-> Int){
//    func add(k: Int) -> Int{
//        return k+n
//    }
//    return add
//}
//
//var eightAdder = nAdder(n: 8)
//print(eightAdder(5))
//
//var tenAdder = nAdder(n: 10)
//print(tenAdder(5))
//
//
//func compareGreaterThan(a: Int, b: Int) -> Bool{
//    return a>b
//}
//
//func compareGreaterThanEqual(a: Int, b:Int) -> Bool{
//    return a>=b
//}
//
//
var country = ["Canda", "Abd", "India","Bhutan","Nepal","China","USA","Mexico"]
//
//func mysort(s1: String,s2: String) -> Bool{
//    return s1 <= s2
//}
//
//func sorter(arr:[String], comp: ((String,String)->Bool)){
//    var sarr = arr
//    var temp:String
//    for i in 0..<arr.capacity{
//        for j in i..<arr.capacity{
//            if(comp(arr[i],arr[j])){
//                temp = sarr[j]
//                sarr[j] = sarr[i]
//                sarr[i] = temp
//            }
//        }
//    }
//    print(sarr)
//}
//
//sorter(arr: country, comp: mysort)
//
//
//country.sort(by: > )
//print(country)
//
//print(country.map { (s1: String) -> String in
//    return String(s1.reversed())
//})

var ss = "RAM is BOY"
print(ss)
print(((
    ss
    .split(separator: " "))
    .map({String($0.reversed())})
    .joined(separator: " ")
))

print(ss.split(separator: " ").filter({$0.count>2}))

country.elementsEqual([""])
