//
//  main.swift
//  implement
//
//  Created by 원동진 on 2023/01/16.
//

import Foundation
//MARK: - 구현 예제 4-1
//let N = Int(readLine()!)!
//let input = readLine()!.split(separator: " ")
//let dx = [0,0,-1,1]
//let dy = [-1,1,0,0]
//let dir = ["L","R","U","D"]
//var X = 1
//var Y = 1
//var Nx = 0
//var Ny = 0
//
//
//for i in input{
//    for j in 0..<dir.count{
//        if i == dir[j] {
//            Nx = X + dx[j]
//            Ny = Y + dy[j]
//        }
//
//    }
//    if Nx < 1 || Ny < 1 || Nx > N || Ny > N{
//        continue
//    }
//    X = Nx
//    Y = Ny
//}
//print("\(X) \(Y)")
//
//MARK: - 예제 4-2
//let N = Int(readLine()!)!
//var count = 0
//for i in 0...N{
//    for j in 0...59 {
//        for k in 0...59 {
//           let time = String(i)+String(j)+String(k)
//            if time.contains("3") {
//                count += 1
//            }
//        }
//
//    }
//}
//
//print("\(count)")
//MARK: - 실전문제 2 왕실의 나이트
//struct stepModel {
//    var x : Int
//    var y : Int
//
//}
//
//let input = Array(readLine()!).map{String($0)}
//var x = Character(input[0]).unicodeScalars.first!.value - Character("a").unicodeScalars.first!.value + 1
//var y = input[1]
//let step = [stepModel(x:2,y:1),stepModel(x:-2,y:1),stepModel(x:2,y:-1),stepModel(x:-2,y:-1),stepModel(x:1,y:2),stepModel(x:-1,y:2),stepModel(x:1,y:-2),stepModel(x:-1,y:-2)]
//var count = 0
//for i in step{
//    let nextX = Int(x) + i.x
//    let nextY = Int(y)! + i.y
//    if 1 ... 8 ~= nextX && 1...8 ~= nextY {
//        count+=1
//    }
//}
//print("\(count)")
// MARK: -  게임 개발
//let input1 = readLine()!.split(separator: " ").map{Int($0)!}
//let N = input1[0]
//let M = input1[1]
//let input2 = readLine()!.split(separator: " ").map{Int($0)!}
//var x = input2[0]
//var y = input2[1]
//var dir = input2[2]
//var map  =  [[Int]]()
//for _ in 0..<M{
//    map.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//print("\(map)")
//let dx = [-1,0,1,0]
//let dy = [0,1,0,-1]
//func turnleft(){
//    dir -= 1
//    if dir == -1 {
//        dir = 3
//    }
//}
//var count = 1
//var turnT = 0
//var nx = 0
//var ny = 0
//
//while true {
//    turnleft()
//    nx = x + dx[dir]
//    ny = y + dy[dir]
//    // 왼쪽방향으로 간후 전진할수 있을경우
//    if map[nx][ny] == 0 {
//        map[nx][ny] = 1
//        x = nx
//        y = ny
//        count+=1
//        turnT =  0
//        continue
//    }else {
//        turnT += 1
//    }
//    // turtT+=1 이유 ? 4방향 가지다 가지못한다면 TunrT = 4를 이용하여 뒤로 가기 위함
//    if turnT == 4 {
//        // 후진은 반대로 -이기 때문에 빼줌
//        nx = x - dx[dir]
//        ny = y - dx[dir]
//        if map[nx][ny] == 0 {
//            x = nx
//            y = ny
//        }else{
//            break
//        }
//        turnT = 0
//    }
//}
//print("\(count)")
//MARK: - Q07 럭키스트레이트
//let input = Array(readLine()!).map{Int(String($0))!}
//let slicePoint = input.count/2
//let firstSlice = input.prefix(slicePoint)
//var firstSum = 0
//let secondSlice = input.suffix(slicePoint)
//var secondSum = 0
//for i in 0..<slicePoint{
//    firstSum += firstSlice[i]
//    secondSum += secondSlice[i+slicePoint]
//}
//if firstSum == secondSum {
//    print("LUCKY")
//}else{
//    print("READY")
//}
// MARK: - Q08 문자열 재정렬
//var sum = 0
//var input = Array(readLine()!).map{String($0)}.sorted()
//var result = ""
//let num = input.compactMap{String in Int(String)}
//for i in num{
//    sum+=i
//}
//input.removeSubrange(0..<num.count)
//for i in input{
//    result += i
//}
//print("\(result)\(sum)")

// MARK: - Q09 문자열 압축

//MARK: - 참조 : https://velog.io/@leeesangheee/Level-2-%EB%AC%B8%EC%9E%90%EC%97%B4-%EC%95%95%EC%B6%95-Swift
//func solution(_ s:String) -> Int {
//    // 문자열 길이 2이상은 압축이 되지 않음
//    // ab -> ab ,aa -> 2a 결국에 동일
//    if s.count <= 2 {
//        return s.count
//    }
//    var result : Int = s.count
//    for i in 1...(s.count/2) { //arrS.count/2 한이유 문자열이 8개인 경우 문자열을 5개씩 단위로 자를경우 결국에는 똑같은 문자열  ex) aabbc def 로나누면 결국엔 stirng값 동일함, 문자열 길이의 반까지만 압축이 가능함
//        let sliceStr = sliceString(str: s, step: i )
//        let compressString = compressStr(strArr: sliceStr)
//        let min = compressString.count
//        if min < result { result = min}
//    }
//    return result
//}
//func sliceString(str : String , step : Int) -> [String] {
//    var result : [String] = []
//    var temp = ""
//    for s in str{
//        temp+=String(s)
//        if temp.count >= step {
//            result.append(temp)
//            temp = ""
//        }
//    }
//    if temp != "" { result.append(temp)} // 홀수 일경우
//    return result
//}
//func compressStr(strArr :[String]) -> String {
//    var result : String = ""
//    var temp : String = ""
//    var count : Int = 1
//    for s in strArr{
//        if temp == s {
//            count+=1
//        }else{
//            if temp != ""{
//                result += (count > 1) ? "\(count)\(temp)" : "\(temp)"
//            }
//            temp = s
//            count = 1
//        }
//    }
//    if temp != "" {
//        result += (count > 1) ? "\(count)\(temp)" : "\(temp)"
//    }
//    return result
//
//}
//

// MARK: - Q12 기둥과 보설치
// 참조 : https://fomaios.tistory.com/entry/Swift-2020-KAKAO-BLIND-RECRUITMENT-%EA%B8%B0%EB%91%A5%EA%B3%BC-%EB%B3%B4-%EC%84%A4%EC%B9%98%ED%95%98%EA%B8%B0
//var pillar : [[Bool]] = [] //기둥
//var pillarPos : [(Int,Int)] = []
//var paper : [[Bool]] = [] // 보
//var paperPos : [(Int,Int)] = []
//func solution(_ n:Int, _ build_frame:[[Int]]) -> [[Int]] {
//    pillar = Array(repeating: Array(repeating: false, count: n+1), count: n+1)
//    paper = Array(repeating: Array(repeating: false, count: n+1), count: n+1)
//    for i in build_frame{
//        let x = i[0]
//        let y = i[1]
//        if i[3] == 1 { //설치
//            if i[2] == 0 { // 기둥일때
//                if checkPillar(x: x, y: y){
//                    pillar[x][y] = true
//                    pillarPos.append((x,y))
//                }
//            }else{// 보일때
//                if checkPaper(x: x, y: y, n: n){
//                    paper[x][y] = true
//                    paperPos.append((x,y))
//                }
//            }
//        }else { //삭제
//            if i[2] == 0{ //기둥일떄
//                pillar[x][y] = false
//                if let index = pillarPos.firstIndex(where: {$0 == (x,y)}){
//                    pillarPos.remove(at: index)
//                }
//                
//                if !checkStructure(n: n){
//                    pillar[x][y] = true
//                    pillarPos.append((x,y))
//                }
//              
//            }else{ //보일때
//                paper[x][y] = false
//                if let index = paperPos.firstIndex(where: {$0 == (x,y)}){
//                    paperPos.remove(at: index)
//                }
//                if !checkStructure(n: n){
//                    paper[x][y] = true
//                    paperPos.append((x,y))
//                }
//            }
//        }
//    }
//    let result = pillarPos.map{[$0.0,$0.1,0]} + paperPos.map{[$0.0,$0.1,1]}
//      return result.sorted { $0[0] == $1[0] ? $0[1] == $1[1] ? $0[2] < $1[2] : $0[1] < $1[1] : $0[0] < $1[0]
//      }
//}
//func checkPillar(x: Int ,y : Int)-> Bool{
//    if y == 0 || pillar[x][y-1] || paper[x][y]{
//        return true
//    }
//    if x > 0 {
//        if paper[x-1][y]{
//            return true
//        }
//    }
//    return false
//}
//func checkPaper(x: Int ,y : Int,n : Int)-> Bool{
//    if pillar[x][y-1] {
//        return true
//    }
//    if x < n {
//        if pillar[x+1][y-1]{
//            return true
//        }
//    }
//    if x > 0 && x < n{
//        if paper[x-1][y] && paper[x+1][y]{
//            return true
//        }
//    }
//    return false
//}
//func checkStructure(n : Int) -> Bool{
//    for pillar in pillarPos{
//    
//        if !checkPillar(x: pillar.0, y: pillar.1){
//            
//            return false
//        }
//    }
//    for paper in paperPos{
//        if !checkPaper(x: paper.0, y: paper.1, n: n){
//            
//            return false
//        }
//    }
//    return true
//}
//
//
