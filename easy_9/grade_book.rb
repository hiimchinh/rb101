def get_grade(score1, score2, score3)
  average_grade = (score1 + score2 + score3) / 3
  case average_grade
  when 101.. then 'A+'
  when 90..100 then 'A'
  when 80..89 then  'B'
  when 70..79 then  'C'
  when 60..69 then  'D'
  else              'F'
  end
end

# test cases
puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
puts get_grade(101, 100, 99) == 'A'
puts get_grade(103, 101, 101) == 'A+'