require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/event_reporter.rb'
require './lib/help_message.rb'

class EventReporterTest < MiniTest::Unit::TestCase
 def test_does_exist
  er = EventReporter.new
  assert_kind_of EventReporter, er
  end

def test_load_does_create_csv_object
  er = EventReporter.new
  er.load('event_attendees.csv')
  assert_kind_of CSV, er.csv
 end

 
end
