require 'minitest'
require 'minitest/autorun'
require './lib/event_reporter.rb'

class EventReporterTest < MiniTest::Unit::TestCase
 def test_does_exist
  er = EventReporter.new
  assert_kind_of EventReporter, er
  end

end