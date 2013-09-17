require 'minitest'
require 'minitest/autorun'
require './lib/event_reporter.rb'

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

 def test_help_does_return_list
  er = EventReporter.new
  assert er.help.class == 'Array'
 end
end
