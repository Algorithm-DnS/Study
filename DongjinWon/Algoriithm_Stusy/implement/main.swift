//
//  main.swift
//  implement
//
//  Created by 원동진 on 2023/01/16.
//

import Foundation
//MARK: - 구현 예제 4-1
let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ")
let dx = [0,0,-1,1]
let dy = [-1,1,0,0]
let dir = ["L","R","U","D"]
var X = 1
var Y = 1
var Nx = 0
var Ny = 0


for i in input{
    for j in 0..<dir.count{
        if i == dir[j] {
            Nx = X + dx[j]
            Ny = Y + dy[j]
        }
        
    }
    if Nx < 1 || Ny < 1 || Nx > N || Ny > N{
        continue
    }
    X = Nx
    Y = Ny
}
print("\(X) \(Y)")

