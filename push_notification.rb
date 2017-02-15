class PushNotification
  attr_accessor :deadline
  def initialize(deadline: Deadline.new)
    @deadline = deadline
  end
end
