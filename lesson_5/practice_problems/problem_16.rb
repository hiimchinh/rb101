def generate_uuid
  uuid = ''
  hexa_list = '0123456789abcdef'
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times do |num|
      random_hex = hexa_list[rand(hexa_list.size)]
      uuid << random_hex
    end
    uuid << '-' if index < sections.count - 1
  end
  uuid
end
puts generate_uuid()