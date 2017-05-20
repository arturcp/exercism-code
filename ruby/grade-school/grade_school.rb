class School
  attr_reader :students_board

  def initialize
    @students_board = {}
  end

  def students(grade)
    (students_board[grade] || []).sort
  end

  def students_by_grade
    students_board.map do |grade, students|
      {
        grade: grade,
        students: students.sort
      }
    end.sort_by { |grades| grades[:grade] }
  end

  def add(name, grade)
    students_board[grade] = [] unless students_board.include?(grade)

    students_board[grade] << name
  end
end

module BookKeeping
  VERSION = 3.freeze
end
