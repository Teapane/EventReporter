require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/event_reporter.rb'


class EventReporterTest < MiniTest::Unit::TestCase

 def test_does_exist
  er = EventReporter.new
  assert_kind_of EventReporter, er
  end

#def test_load_does_create_queue
  #er = EventReporter.new
  #er.load('..event_attendees.csv')
  #assert_kind_of Queue, er.queue_object
 #end

 def rejects_invalid_command
  er = EventReporter.new
  assert_false er.command_valid('potato')
 
 end
end
