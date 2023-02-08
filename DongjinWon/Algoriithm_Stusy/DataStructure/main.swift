//
//  main.swift
//  DataStructure
//
//  Created by 원동진 on 2023/02/02.
//

import Foundation

//MARK: - Stack 구현
//struct Stack<T>{
//    private var stack : [T] = []
//    public var count : Int{
//        return stack.count
//    }
//    public var isEmpty : Bool{
//        return stack.isEmpty
//    }
//    public mutating func push(_ element : T){
//        stack.append(element)
//    }
//    public mutating func pop(_ element : T) -> T?{
//        return isEmpty ? nil : stack.popLast()
//    }
//    public mutating func clear(){
//        stack.removeAll()
//    }
//}
//MARK: - Queue 구현
//struct Queue<T>{
//    private var queue : [T] = []
//    public var count : Int{
//        return queue.count
//    }
//    public var isEmpty : Bool {
//        return queue.isEmpty
//    }
//    public mutating func enqueue(_ element : T){
//        queue.append(element)
//    }
//    public mutating func dequeue(_ element : T) -> T?{
//        return isEmpty ? nil : queue.removeFirst()
//    }
//    public mutating func clear(){
//        queue.removeAll()
//    }
//}
//
