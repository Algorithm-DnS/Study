//
//  main.swift
//  DFS/BFS
//
//  Created by 원동진 on 2023/02/02.
//

import Foundation

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

//MARK: - 실전 Q17 경쟁적 전염 백준 18405
//struct Virus : Comparable{
//    static func < (lhs: Virus, rhs: Virus) -> Bool {
//        return lhs.num < rhs.num
//    }
//    
//    let num : Int
//    let x : Int
//    let y : Int
//    let time : Int
//}
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//let (N,K) = (input[0],input[1])
//var datas : [Virus] = []
//var graph = [[Int]]()
//for i in 0..<N{
//    let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
//    graph.append(input2)
//    for j in 0..<N {
//        if graph[i][j] != 0 {
//            datas.append(Virus(num: graph[i][j], x: i, y: j, time: 0))
//        }
//    }
//}
//datas.sort()
//let input3 = readLine()!.split(separator: " ").map{Int(String($0))!}
//let (S,X,Y) = (input3[0],input3[1]-1,input3[2]-1)
//var queue : [Virus] = []
//let dx = [-1,1,0,0]
//let dy = [0,0,-1,1]
//for data in datas {
//    queue.append(data)
//}
//
//while !queue.isEmpty{
//    let now = queue.removeFirst()
//    let x = now.x
//    let y = now.y
//    for i in 0..<dx.count{
//        let nx = x + dx[i]
//        let ny = y + dy[i]
//        if 0 <= nx ,nx < N,0 <= ny , ny < N , graph[nx][ny] == 0 , now.time < S{
//            graph[nx][ny] = now.num
//            queue.append(Virus(num: now.num, x: nx, y: ny, time: now.time+1))
//        }
//    }
//}
//print("\(graph[X][Y])")

//MARK: - 실전 Q18 괄호 변환
//func solution(_ p:String) -> String {
//    if p.count < 1 {return ""}
//    var count = 0 , index = p.startIndex
//    repeat{
//        if String(p[index]) == "("{
//            count+=1
//        }else {
//            count-=1
//        }
//        index = p.index(after: index)
//    }while count != 0
//    var u = String(p[..<index])
//    var v = String(p[index...])
//    if String(u.first!) == "("{
//        return u + solution(v)
//    }else{
//        u.removeLast()
//        u.removeFirst()
//        return "(\(solution(v)))\(u.map{String($0) == "(" ? ")" :"("}.joined())"
//    }
//
//}
//print("\(solution("(()())()"))")

//MARK: - 연산자 끼워 넣기 백준  14888
//let N = Int(readLine()!)!
//let data = readLine()!.split(separator: " ").map{Int(String($0))!}
//var oper = readLine()!.split(separator: " ").map{Int(String($0))!}
//var min_value = Int.max
//var max_value = Int.min
//
//func dfs(depth:Int, sum : Int){
//    if depth == N {
//        max_value = max(max_value,sum)
//        min_value = min(min_value,sum)
//        return
//    }
//    for idx in 0...3 {
//        if oper[idx] > 0 {
//            oper[idx]-=1
//            switch idx {
//            case 0 :
//                dfs(depth: depth+1, sum: sum+data[depth])
//            case 1 :
//                dfs(depth: depth+1, sum: sum-data[depth])
//            case 2 :
//                dfs(depth: depth+1, sum: sum*data[depth])
//            case 3 :
//                dfs(depth: depth+1, sum: sum/data[depth])
//            default:
//                break
//            }
//            oper[idx]+=1
//        }
//    }
//
//}
//dfs(depth: 1, sum: data[0])
//print("\(max_value)")
//print("\(min_value)")
//MARK: - 감시 피하기 백준 18428
//let N  = Int(readLine()!)!
//var board = [[String]]()
//var teacher = [(Int,Int)]()
//var spaces = [[Int]]()
//var cnt = 3
//
////1. 전체 맵 데이터 저장
////2. 선생님 위치 저장
////3. 빈공간 저장
//for i in 0..<N{
//    let input = readLine()!.split(separator: " ").map{String($0)}
//    board.append(input)
//    for j in 0..<N{
//        if board[i][j] == "T"{
//            teacher.append((i,j))
//        }
//        if board[i][j] == "X"{
//            spaces.append([i,j])
//        }
//    }
//}
////
//func watch(x : Int,y : Int,direction : Int)-> Bool{
//    var dx = x
//    var dy = y
//    switch direction {
//    case 0: // 왼쪽 방향일때
//        while dy >= 0{
//            if board[dx][dy] == "S"{
//                return true
//            }
//            if board[dx][dy] == "O"{
//                return false
//            }
//            dy-=1
//        }
//    case 1: //오른쪽 방향일때
//        while dy < N{
//            if board[dx][dy] == "S"{
//                return true
//            }
//            if board[dx][dy] == "O"{
//                return false
//            }
//            dy+=1
//        }
//    case 2: //위쪽일때
//        while dx >= 0{
//            if board[dx][dy] == "S"{
//                return true
//            }
//            if board[dx][dy] == "O"{
//                return false
//            }
//            dx-=1
//        }
//    case 3:
//        while dx < N{
//            if board[dx][dy] == "S"{
//                return true
//            }
//            if board[dx][dy] == "O"{
//                return false
//            }
//            dx+=1
//        }
//    default :
//        break
//    }
//    
//    return false
//}
////장애물 설치이후 한명이라도 학생이 감지되는지 검사
//func studentWatch()->Bool{
//    for i in teacher{
//        for j in 0...3{
//            if watch(x: i.0 , y: i.1, direction: j){
//                return true
//            }
//        }
//    }
//    return false
//}
//var find = false
//func dfs(_ index: Int,_ cnt: Int){
//    if cnt == 3{ //벽 3개 생성후 4방향으로 직진 하여 학생있으면 true 없으면 false
//        if !studentWatch() {
//            find = true
//        }
//        return
//    }
//    for i in index..<spaces.count { // 벽을만들수 있는 조합수 생성
//        let nx = spaces[i][0]
//        let ny = spaces[i][1]
//        board[nx][ny] = "O" //벽생성
//        dfs(i+1, cnt+1) // 벽 3개 생길때까지 dfs 진행
//        board[nx][ny] = "X" // 다음 경우의 수 벽을 위해 벽삭제
//      }
//}
//dfs(0,0)
//print("\(find ? "YES" : "NO")")
