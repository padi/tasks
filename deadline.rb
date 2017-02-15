require 'active_record'
require 'date'

class Deadline < ActiveRecord::Base
  attr_accessor :name, :due_date

  def initialize(name: "Deadline", due_date: Date.today)
    @name = name
    @due_date = due_date
  end

  def today?
    Date.today == due_date
  end

  def missed?
    Date.today > due_date
  end

  def tomorrow?
    Date.today.next_day(1) == due_date
  end

  def project_name
    'Project'
  end

  def to_s
    "<Deadline: name: #{project_name.inspect}, due_date: #{due_date}>"
  end
end
