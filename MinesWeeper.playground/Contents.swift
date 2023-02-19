import UIKit

func minesweeper(bombs: [[Int]], rows: Int, columns: Int) -> [[Int]] {
    var field = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    
    for bomb in bombs {
        let row = bomb[0]
        let column = bomb[1]
        field[row][column] = -1
        
        for i in row-1...row+1 {
            for j in column-1...column+1 {
                if (0 <= i) && (i < rows) && (0 <= j) && (j < columns) && (field[i][j] != -1) {
                    field[i][j] += 1
                }
            }
        }
    }
    
    return field
}


let field = minesweeper(bombs: [[0, 2], [0, 3]], rows: 3, columns: 4)

field.map { (array) in
    print(array)
}
