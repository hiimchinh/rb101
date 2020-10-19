def get_grade(score1, score2, score3)
  average_grade = (score1 + score2 + score3) / 3
  if average_grade <= 100 && average_grade >= 90
    'A'
  elsif average_grade < 90 && average_grade >= 80
    'B'
  elsif average_grade < 80 && average_grade >= 70
    'C'
  elsif average_grade < 70 && average_grade >= 60
    'D'
  else
    'F'    
  end
end

# test cases
puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
