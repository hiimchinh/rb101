flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
result = ''
flintstones.each do |name|
    if name.start_with?('Be')
        result = name
        break
    end
end
puts result