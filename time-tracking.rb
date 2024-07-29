class TimeTracker
    def initialize
        @start_time_track = nil
        @stop_time_track = nil
    end

end

Time_Tracker = TimeTracker.new ##new instance that calls initialize method

##Simple menu
puts "1. Start Time Tracking"
puts "2. Stop Time Tracking"
puts "3. Elapsed Time"
puts "4. Exit"
choice = gets.chomp_to.i

loop do
    case choice
    when 1
        Time_Tracker.start_time
    when 2
        Time_Tracker.stop_time
    when 3
        Time_Tracker.elapsed_time
    when 4
        break
    else
        puts"Invalid choice!! Please enter choice between 1 to 4"
    end
    puts"\n\n"
end
        