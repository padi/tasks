require 'bundler'
Bundler.setup(:development, :test)
require 'minitest/autorun'
require_relative './deadline'

class DeadlineTest < Minitest::Test
  def test_deadline_queries
    deadline_1 = Deadline.create(due_date: Date.today.prev_day(1))
    deadline_2 = Deadline.create(due_date: Date.today)
    deadline_3 = Deadline.create(due_date: Date.today.next_day(1))
    deadlines = [deadline_1, deadline_2, deadline_3]
    assert deadline_1.missed?
    assert deadline_2.today?
    assert deadline_3.tomorrow?
  end
end
