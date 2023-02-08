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
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let (N , M)  = (input[0] , input[1])
//var graph = [[Int]]()
//for _ in 0..<N{
//    graph.append(readLine()!.map{Int(String($0))!})
//}
//let dx = [-1,1,0,0] // 아래에 이렇게 설정한 이유 - 이동할방향
//let dy = [0,0,-1,1]
//var queue = [[Int]]()
//bfs(0, 0) // bfs가장 가까운 노드를 탐색할수 있기때문 0,0이 기준
//// 목표가 항상 오른쪽 끝임으로 다른 노드의 count가 증가해도 상관이 없음.
//var nx = 0 // 이동후의 x좌표
//var ny = 0 // 이동후의 y좌표
//func bfs(_ x : Int,_ y : Int){
//    queue.append([x,y])
//    while queue.count != 0 {
//        let preNode : [Int] = queue.removeFirst() // dequeque개념
//                //preNode : 4방향으로 이동하기 전의 좌표
//        let x = preNode[0]
//        let y = preNode[1]
//        for i in 0..<4 {
//            nx = x + dx[i]
//            ny = y + dy[i]
//            if nx < 0 || ny < 0 || nx >= N || ny >= M{
//                continue // 맵을 넘어설때
//            }
//            else if graph[nx][ny] == 0 {
//                continue //통과하지 못하는경우
//            }
//            else if graph[nx][ny] == 1{ //방문가능 노드
//                graph[nx][ny] = graph[x][y]+1 //현재 노드의 좌표에서 축적된거리 = 이전 노드좌표에 축적된 거리 +1
//                                //-> 지나온 거리만큼 노드에 축적됨
//                queue.append([nx,ny])
//                            //-> BFS 인접노드 방문
//            }
//        }
//    }
//    print("\(graph[N-1][M-1])")
//
//}
//
//MARK: - Q15 특정 거리의 도시 찾기 백준 18352 -> 시간 초과 해결하지못함 ,, 다른 사람 코드봐도 어떻게 시간초과를 해결하는지 모르겠음 ..
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//let (N,M,K,X) = (input[0] , input[1] , input[2] , input[3])
//var graph : [[Int]] = Array(repeating: [], count: N+1)
//var distance : [Int] = Array(repeating: 0, count: N+1)
//var queue : [Int] = []
//for _ in 0..<M{
//    let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let(a,b) = (input2[0],input2[1])
//    graph[a].append(b)
//}
//func bfs(_ start : Int, targetGraph : [[Int]]){
//    queue.append(start)
//    while queue.count != 0 {
//        let now = queue.removeFirst() // 현재 node
//        for next in targetGraph[now]{ // next 현재 node에서 갈수있는 node
//            if distance[next] == 0 { // 갈수 있는 노드
//                distance[next] = distance[now]+1 // 현재 노드 + 1 = 다음 노드
//                queue.append(next)
//            }
//        }
//    }
//    
//    
//}
//bfs(X, targetGraph: graph)
//var check = false
//for i in 0..<distance.count{
//    if distance[i] == K {
//        print("\(i)")
//        check = true
//    }
//}
//if check == false{
//    print("-1")
//}
//
//
//MARK: - Q 16 연구소 백준 14502

//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//let (N,M) = (input[0],input[1])
//var map = [[Int]]()
//var safeArea = [[Int]]()
//var virusArea = [[Int]]()
//var answer = 0
//for _ in 0..<N { // map 추가
//    map.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//for i in 0..<N{ // 안전영역
//    for j in 0..<M{
//        if map[i][j] == 0 {
//            safeArea.append([i,j])
//        }else if map[i][j] == 2 {
//            virusArea.append([i,j])
//        }
//    }
//}
////상하좌우
//let dx = [-1,1,0,0]
//let dy = [0,0,-1,1]
//// 3개의 빈벽 세운후의 맵
//
//func combi(_ index: Int, _ arr: [[Int]]) {
//    var temp = map // 벽 3개를 세운 맵
//    if arr.count == 3 {
//        let first = arr[0]
//        let second = arr[1]
//        let third = arr[2]
//        temp[first[0]][first[1]] = 1 // 벽세움
//        temp[second[0]][second[1]] = 1
//        temp[third[0]][third[1]] = 1
//        virusGetSafeArea(temp) // 벽을 세우고 바이러스 퍼트린후 safeArea 검사
//        return
//    }
//
//    // 순서가 상관없으므로 앞의 인덱스를 확인할 필요가 없음
//    for i in index..<safeArea.count {
//        combi(i+1, arr + [safeArea[i]])
//    }
//}
//var queue : [Int] = []
//var nx = 0 // 이동후 x좌표
//var ny = 0 // 이동후 y좌표
//// 바이러스 퍼트린후 안전영역의 좌표
//func virusGetSafeArea(_ map: [[Int]]){
//    var map = map
//    var queue = virusArea
//    while queue.count != 0{
//        let now = queue.removeFirst()
//        let x = now[0] // 바이러스가 존재하는 좌표
//        let y = now[1]
//        for i in 0..<4 { //4방향
//            nx = x + dx[i]
//            ny = y + dy[i]
//
//            if nx < 0 || ny < 0 || nx >= N || ny >= M{
//                continue // 맵을 넘어설때
//            }else if map[nx][ny] == 2 { //바이러스가 있을경우
//                continue
//            }else {
//                if map[nx][ny] == 0{ //바이러스를 퍼트릴수있는경우
//                    map[nx][ny] = 2
//                    queue.append([nx,ny])
//                }
//            }
//
//        }
//    }
//    var safeCount = 0
////MARK: - 안전영역 세기
//    for i in 0..<N{
//        for j in 0..<M{
//            if map[i][j] == 0{
//                safeCount+=1
//            }
//        }
//    }
//    if answer < safeCount {
//        answer = safeCount
//    }
//}
//
//combi(0,[])
//print("\(answer)")
