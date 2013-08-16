class CallLog < ActiveRecord::Base
  attr_accessible :date, :number, :time, :extension, :employee, :state
end
