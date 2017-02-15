require 'bundler'
Bundler.require(:default, :development)
require 'active_record'
require_relative './deadline'
require 'date'

deadline_1 = Deadline.new(due_date: Date.today.prev_day(1))
deadline_2 = Deadline.new(due_date: Date.today)
deadline_3 = Deadline.new(due_date: Date.today.next_day(1))
deadlines = [deadline_1, deadline_2, deadline_3]
puts deadlines
