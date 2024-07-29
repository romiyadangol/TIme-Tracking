class TimeTracker
    def initialize
        @start_time_track = nil
        @stop_time_track = nil
    end

    def start_time
        @start_time_track = Time.now
        puts "Time has started tracking at #{@start_time_track}"
    end

    def stop_time
        @stop_time_track = Time.now
        puts "Time has stopped tracking at #{@stop_time_track}"
    end

    def elapsed_time
        if @start_time_track.nil?
            puts "You haven't started the timer yet!!"
        elsif @stop_time_track.nil?
            puts "You haven't stopped the timer yet!!"
        else
            puts "Elapsed time : #{@stop_time_track - @start_time_track}"
        end
    end
end

Time_Tracker = TimeTracker.new ##new instance that calls initialize method

##Simple menu
loop do
    puts "1. Start Time Tracking"
    puts "2. Stop Time Tracking"
    puts "3. Elapsed Time"
    puts "4. Exit"
    choice = gets.chomp.to_i

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
        