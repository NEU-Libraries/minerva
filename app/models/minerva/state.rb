module Minerva
  class State < ApplicationRecord
    attr_accessor :creator_id
    attr_accessor :user_id
    attr_accessor :role_id
    attr_accessor :work_id
    
    belongs_to :assignment
    belongs_to :status
    
    belongs_to :creator, class_name: Minerva.creator_class.to_s
    belongs_to :user, class_name: Minerva.user_class.to_s
    belongs_to :role, class_name: Minerva.role_class.to_s
    belongs_to :work, class_name: Minerva.work_class.to_s
    
    before_destroy { |record| raise ActiveRecord::ReadOnlyRecord }
    
    before_validation :set_creator
    before_validation :set_user
    before_validation :set_role
    before_validation :set_work
    
    def readonly?
      # allow the creation, you can also use a more complex condition to allow updates under certain conditions
      new_record? ? false : true 
    end
    
    private
      def set_creator
        self.creator = Minerva.creator_class.find(creator_id)
      end
      
      def set_user
        self.user = Minerva.user_class.find(user_id)
      end
      
      def set_role
        self.role = Minerva.role_class.find(role_id)
      end
      
      def set_work
        self.work = Minerva.work_class.find(work_id)
      end
  end
end
