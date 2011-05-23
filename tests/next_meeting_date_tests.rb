#!/usr/bin/env ruby

require "test/unit"
require "date"
require "rubygems"
require "liquid"

require "next_meeting_date"

class TestNextMeetingData < Test::Unit::TestCase
        
    def test_on_may_23_2011_the_next_meeting_date_is_may_23_2011
        nextMeetingDate = Jekyll::NextMeetingDate.new('next_meeting_date', '2011-05-23', [])
        assert_equal("May 23, 2011", nextMeetingDate.render(Liquid::Context.new))
    end

    def test_on_may_24_2011_the_next_meeting_date_is_june_6_2011
        nextMeetingDate = Jekyll::NextMeetingDate.new('next_meeting_date', '2011-05-24', [])
        
        assert_equal("June  6, 2011", nextMeetingDate.render(Liquid::Context.new))
    end

    def test_on_june_7_2011_the_next_meeting_is_june_20_2011
        nextMeetingDate = Jekyll::NextMeetingDate.new('next_meeting_date', '2011-06-07', [])
       
        assert_equal("June 20, 2011", nextMeetingDate.render(Liquid::Context.new))
    end

    def test_on_may_23_the_next_monday_is_may_30
        may23 = Date.parse '2011-05-23'
        may30 = Date.parse '2011-05-30'
        
        assert_equal(may30.strftime('%x'), may23.nextMonday.strftime('%x'))
    end

    def test_on_may_24_the_next_monday_is_may_30
        may24 = Date.parse '2011-05-24'
        may30 = Date.parse '2011-05-30'
        
        assert_equal(may30.strftime('%x'), may24.nextMonday.strftime('%x'))
    end
    
    def test_on_may_25_the_next_monday_is_may_30
        may25 = Date.parse '2011-05-25'
        may30 = Date.parse '2011-05-30'

        assert_equal(may30.strftime('%x'), may25.nextMonday.strftime('%x'))
    end

    def test_on_may_26_the_next_monday_is_may_30
        may26 = Date.parse '2011-05-26'
        may30 = Date.parse '2011-05-30'

        assert_equal(may30.strftime('%x'), may26.nextMonday.strftime('%x'))
    end

    def test_on_may_29_the_next_monday_is_may_30
        may29 = Date.parse '2011-05-29'
        may30 = Date.parse '2011-05-30'

        assert_equal(may30.strftime('%x'), may29.nextMonday.strftime('%x'))
    end
end
