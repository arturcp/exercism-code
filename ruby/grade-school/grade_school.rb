class School
  attr_reader :students_board

  def initialize
    @students_board = {}
  end

  def students(grade)
    students_board.fetch(grade, [])
  end

  def students_by_grade
    students_board.sort.map do |grade, students|
      { grade: grade, students: students.sort }
    end
  end

  def add(name, grade)
    students_board[grade] ||= []
    students_board[grade] << name
    students_board[grade].sort!
  end
end

module BookKeeping
  VERSION = 3.freeze
end
