# code here!
require 'pry'
class School

attr_accessor :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student, grade)
  if @roster.key?(grade)
    @roster[grade] << student
  else
    @roster[grade] = []
    @roster[grade] << student
  end
end

def grade(grade)
  @roster.each do |year, students|
    if year == grade
      return students
    end
  end
end

def sort
  sorted = {}

  @roster.each do |year, students|
    sorted[year] = students.sort
  end
  sorted
end
end
