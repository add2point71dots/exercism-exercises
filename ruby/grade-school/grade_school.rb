class School
  def initialize
    @students = Hash.new { |h, k| h[k] = [] }
  end

  def add(student, grade)
    @students[grade] << student
  end

  def students(grade)
    @students[grade].sort
  end

  def students_by_grade
    students_by_grade = @students.map do |grade, student|
      { grade: grade, students: @students[grade].sort }
    end
    students_by_grade.sort_by { |student_collection| student_collection[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
