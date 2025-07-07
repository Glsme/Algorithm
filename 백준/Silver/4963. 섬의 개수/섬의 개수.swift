// 동 남 서 북 대각선 4방향
let dx = [1, 0, -1, 0, 1, 1, -1, -1]
let dy = [0, 1, 0, -1, -1, 1, -1, 1]

while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    // 종료조건
    if input == [0, 0] {
        break
    }
    
    let w = input[0], h = input[1]
    var graph: [[Int]] = []
    for _ in 0..<h {
        graph.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    
    // 방문여부를 알 수 있는 배열
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: w), count: h)
    
    // 섬의 범위를 벗어날 수 있는지
    func isVaildCoord(y: Int, x: Int) -> Bool {
        return 0..<h ~= y && 0..<w ~= x
    }
    
    // DFS 함수
    func dfs(y: Int, x: Int) {
        visited[y][x] = true
        
        for i in 0..<8 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] == 1 {
                dfs(y: ny, x: nx)
            }
        }
    }
    
    var answer = 0
    for y in 0..<h {
        for x in 0..<w {
            if graph[y][x] == 1 && !visited[y][x] {
                answer += 1
                dfs(y: y, x: x)
            }
        }
    }
    print(answer)
    
}