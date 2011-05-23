require "rubygems"
require "liquid"

DAYS_IN_WEEK = 7
SUNDAY = 0
MONDAY = 1

class Date
    def nextMonday
        if self.wday == SUNDAY then
            self + 1
        else
            self + DAYS_IN_WEEK - (self.wday - MONDAY)
        end
    end
end

module Jekyll
    BASE_DATE = Date.parse('2011-05-23')

    
    class NextMeetingDate < Liquid::Tag
        attr_reader :today
        
        def initialize tag_name, today, tokens
            super
            
            if today != '' then
                @today = Date.parse today
            else
                @today = Date.today
            end
        end

        def render context
            nextDate = BASE_DATE
            if @today > BASE_DATE then
                if @today.wday != MONDAY then
                    @today = @today.nextMonday
                end
                
                weeksSinceBaseDate = (@today - BASE_DATE) / DAYS_IN_WEEK
                offsetToBiweekly = weeksSinceBaseDate % 2
                weeksFromBaseDateToNextMeeting = weeksSinceBaseDate + offsetToBiweekly
                nextDate = BASE_DATE + (weeksFromBaseDateToNextMeeting * DAYS_IN_WEEK)
            end
                
            nextDate.strftime('%B %e, %Y')
        end
    end
end

Liquid::Template::register_tag('next_meeting_date', Jekyll::NextMeetingDate)
