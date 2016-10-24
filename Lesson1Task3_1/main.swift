//
//  main.swift
//  Lesson1Task3_1
//
//  Created by Kirill Netavskiy on 22.10.16.
//  Copyright © 2016 Kirill Netavskiy. All rights reserved.
//

import Foundation
var a :  String
func counter(Array Arr: [String]) -> [String]{
    var Arr = Arr
    var b : Double
    var c : Double
    var i : Int
    var result : Double
    while Arr.count != 1 {
        
        if Arr.index(of: "*") != nil{
            i = Arr.index(of: "*")!
            b = Double(Arr[i - 1])!
            c = Double(Arr[i + 1])!
            result = b*c
            Arr[i - 1] = String(result)
            Arr.remove(at: i)
            Arr.remove(at: i)
            
        }
        else if Arr.index(of: "/") != nil{
            i = Arr.index(of: "/")!
            b = Double(Arr[i - 1])!
            c = Double(Arr[i + 1])!
            result = b/c
            Arr[i - 1] = String(result)
            Arr.remove(at: i)
            Arr.remove(at: i)
            
        }
        else if Arr.index(of: "+") != nil{
            i = Arr.index(of: "+")!
            b = Double(Arr[i - 1])!
            c = Double(Arr[i + 1])!
            result = b+c
            Arr[i - 1] = String(result)
            Arr.remove(at: i)
            Arr.remove(at: i)
            
        }
        else if Arr.index(of: "-") != nil{
            i = Arr.index(of: "-")!
            b = Double(Arr[i - 1])!
            c = Double(Arr[i + 1])!
            result = b-c
            Arr[i - 1] = String(result)
            Arr.remove(at: i)
            Arr.remove(at: i)
            
        }
        
        
    }
    return Arr
}


print(" Введите уравнение в формате \n x + y * z ")
a = readLine()!
if a.contains("("){
    print(" Тили-тили\n Трали-вали\n Это мы не проходили\n Это нам не задавали")
}
else{
var Arr = a.components(separatedBy: " ")
print(counter(Array: Arr))
}
