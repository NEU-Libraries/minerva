module Minerva
  class State < ApplicationRecord
    belongs_to :assignment
    belongs_to :status
    
    before_destroy { |record| raise ActiveRecord::ReadOnlyRecord }
    
    def readonly?
      # allow the creation, you can also use a more complex condition to allow updates under certain conditions
      new_record? ? false : true 
    end
  end
end
