module Minerva
  class Workflow < ApplicationRecord
    attr_accessor :creator_id
    attr_accessor :project_id
    
    belongs_to :creator, class_name: Minerva.creator_class.to_s
    belongs_to :project, class_name: Minerva.project_class.to_s
    
    before_validation :set_creator
    before_validation :set_project
    
    private
      def set_creator
        self.creator = Minerva.creator_class.find_or_create_by(id: creator_id)
      end
      
      def set_project
        self.project = Minerva.project_class.find_or_create_by(id: project_id)
      end

  end
end
