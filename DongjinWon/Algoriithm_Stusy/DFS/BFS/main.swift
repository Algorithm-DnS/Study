//
//  main.swift
//  DFS/BFS
//
//  Created by 원동진 on 2023/02/02.
//

import Foundation
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
//    public mutating func dequeue() -> T?{
//        return isEmpty ? nil : queue.removeFirst()
//    }
//    public mutating func clear(){
//        queue.removeAll()
//    }
//}
//let test = [
//[], //0
//[2,3,8], //1
//[1,7],//2
//[1,4,5],//3
//[3,5], //4
//[3,4], //5
//[7],//6
//[2,6,8],//7
//[1,7]//8
//]

//MARK: - DFS
//var visited = Array.init(repeating: false, count: test.count)
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

//MARK: - 미로탈출 BFS 백준 2178
let input = readLine()!.split(separator: " ").map{Int($0)!}
let (N , M)  = (input[0] , input[1])
var graph = [[Int]]()
for _ in 0..<N{
    graph.append(readLine()!.map{Int(String($0))!})
}
let dx = [-1,1,0,0] // 아래에 이렇게 설정한 이유 - 이동할방향
let dy = [0,0,-1,1]
var queue = [[Int]]()
bfs(0, 0) // bfs가장 가까운 노드를 탐색할수 있기때문 0,0이 기준
// 목표가 항상 오른쪽 끝임으로 다른 노드의 count가 증가해도 상관이 없음.
var nx = 0 // 현재 노드의 x좌표
var ny = 0 // 현재 노드의 y좌표
func bfs(_ x : Int,_ y : Int){
    queue.append([x,y])
    while queue.count != 0 {
        let preNode : [Int] = queue.removeFirst() // dequeque개념
                //preNode : 4방향으로 이동하기 전의 좌표
        let x = preNode[0]
        let y = preNode[1]
        for i in 0..<4 {
            nx = x + dx[i]
            ny = y + dy[i]
            if nx < 0 || ny < 0 || nx >= N || ny >= M{
                continue // 맵을 넘어설때
            }
            else if graph[nx][ny] == 0 {
                continue //통과하지 못하는경우
            }
            else if graph[nx][ny] == 1{ //방문가능 노드
                graph[nx][ny] = graph[x][y]+1 //현재 노드의 좌표에서 축적된거리 = 이전 노드좌표에 축적된 거리 +1
                                //-> 지나온 거리만큼 노드에 축적됨
                queue.append([nx,ny])
                            //-> BFS 인접노드 방문
            }
        }
    }
    print("\(graph[N-1][M-1])")

}

