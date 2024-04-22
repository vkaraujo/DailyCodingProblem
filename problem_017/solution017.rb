module DailyCodingProblem017
  def self.is_passable?(board, x, y)
    # Checks if the cell is within bounds and is not a wall
    x.between?(0, board.length - 1) && y.between?(0, board[0].length - 1) && board[x][y] == false
  end

  def self.enqueue_neighbors(queue, visited, board, x, y, steps)
    # List of possible directions: right, down, left, up
    directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]
    directions.each do |dx, dy|
      nx, ny = x + dx, y + dy
      # Check if the next position is passable and not visited
      if is_passable?(board, nx, ny) && !visited[nx][ny]
        visited[nx][ny] = true
        queue.push([nx, ny, steps + 1])
      end
    end
  end

  def self.min_steps(board, start, goal)
    return nil if !is_passable?(board, start[0], start[1]) || !is_passable?(board, goal[0], goal[1])

    # Initialize the BFS structures
    queue = [[start[0], start[1], 0]]
    visited = Array.new(board.length) { Array.new(board[0].length, false) }
    visited[start[0]][start[1]] = true

    while !queue.empty?
      x, y, steps = queue.shift
      return steps if [x, y] == goal
      enqueue_neighbors(queue, visited, board, x, y, steps)
    end

    nil # Return nil if no path is found
  end
end
