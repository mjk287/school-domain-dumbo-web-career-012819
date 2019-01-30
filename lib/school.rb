# require 'pry'

class School
  attr_accessor :roster, :name

  def initialize(school_name)
    @roster = {}
    @name = school_name
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name]
    end
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    sorted_hash = {}

    @roster.each do |grade, students|
      sorted_hash[grade] = students.sort
    end

    sorted_hash
  end
end
