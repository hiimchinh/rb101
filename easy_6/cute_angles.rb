DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = SECONDS_PER_MINUTE * MINUTES_PER_DEGREE

def dms(degree_float)
  total_seconds = (degree_float * SECONDS_PER_DEGREE).round
  total_minutes, seconds = total_seconds.divmod(SECONDS_PER_MINUTE)
  degrees, minutes = total_minutes.divmod(MINUTES_PER_DEGREE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# test cases
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00")