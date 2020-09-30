munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

KID_RANGE = 0..17
ADULT_RANGE = 18..64

munsters.each do |name, info|
  munsters[name]['age_group'] = case info['age']
  when KID_RANGE
    'kid'
  when ADULT_RANGE
    'adult'
  else
    'senior'
  end
end
p munsters