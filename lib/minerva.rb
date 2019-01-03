require "minerva/engine"

module Minerva  
  mattr_accessor :creator_class
  mattr_accessor :user_class
  mattr_accessor :project_class
  mattr_accessor :role_class
  mattr_accessor :work_class
  
  def self.creator_class
    @@creator_class.constantize
  end
  
  def self.user_class
    @@user_class.constantize
  end
  
  def self.project_class
    @@project_class.constantize
  end
  
  def self.role_class
    @@role_class.constantize
  end
  
  def self.work_class
    @@work_class.constantize
  end
end
