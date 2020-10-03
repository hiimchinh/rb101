def generate_uuid
  uuid = ''
  hexa_list = '0123456789abcdef'
  32.times do |index|
    if [8, 13, 18, 23].include?(index)
      uuid << '-'
    else
      uuid << hexa_list[rand(hexa_list.size)]
    end
  end
  uuid
end
puts generate_uuid()