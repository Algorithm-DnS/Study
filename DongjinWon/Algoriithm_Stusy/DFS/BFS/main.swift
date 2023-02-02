//
//  main.swift
//  DFS/BFS
//
//  Created by 원동진 on 2023/02/02.
//

import Foundation
struct Queue<T>{
    private var queue : [T] = []
    public var count : Int{
        return queue.count
    }
    public var isEmpty : Bool {
        return queue.isEmpty
    }
    public mutating func enqueue(_ element : T){
        queue.append(element)
    }
    public mutating func dequeue() -> T?{
        return isEmpty ? nil : queue.removeFirst()
    }
    public mutating func clear(){
        queue.removeAll()
    }
}
let test = [
[], //0
[2,3,8], //1
[1,7],//2
[1,4,5],//3
[3,5], //4
[3,4], //5
[7],//6
[2,6,8],//7
[1,7]//8
]

//MARK: - DFS
var visited = Array.init(repeating: false, count: test.count)
//func dfs(start : Int,graph: [[Int]]){
//    visited[start] = true
//    print(start,terminator: " ")
//    for i in graph[start]{
//        if !visited[i]{
//            dfs(start: i, graph: graph)
//        }
//    }
//
//}
//
//dfs(start: 1, graph: test)
//MARK: - BFS
//var queue = Queue<Int>()
//func bfs(start : Int , graph : [[Int]]){
//    queue.enqueue(start)
//    visited[start] = true
//    while !queue.isEmpty {
//        guard let element = queue.dequeue() else {return}
//        print(element, terminator: " ")
//        for i in graph[element]{
//            if !visited[i] {
//                queue.enqueue(i)
//                visited[i] = true
//            }
//        }
//    }
//}
//bfs(start: 1, graph: test)
//MARK: - 음료수 얼려먹기
//let input = readLine()!.split(separator:" ").map{Int($0)!}
//let N  = input[0] , M = input[1]
//var graph = [[Int]]()
//for _ in 0..<N {
//    graph.append(readLine()!.map{Int(String($0))!})
//}
//func dfs(_ x : Int ,_ y : Int) ->Bool {
//    if x <= -1 || x >= N || y <= -1 || y >= M {
//        return false
//    }
//    if graph[x][y] == 0{
//        graph[x][y] = 1
//        dfs(x-1, y)
//        dfs(x, y-1)
//        dfs(x, y+1)
//        dfs(x+1, y)
//        return true
//    }
//    return false
//}
//var answer = 0
//for i in 0..<N{
//    for j in 0..<M{
//        if dfs(i, j) == true{
//            answer += 1
//        }
//    }
//}
//print("\(answer)")
