class EventReporter
  def initialize
    @csv = nil
  end

  def run
    command = ''
    while commamnd != 'quit'
     execute_command(command)
   end
 end
end
