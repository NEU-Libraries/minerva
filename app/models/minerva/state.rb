module Minerva
  class State < ApplicationRecord

    belongs_to :interface, optional: true
    belongs_to :user, optional: true
    belongs_to :work

    belongs_to :creator, class_name: "Minerva::User"

    before_destroy { |record| raise ActiveRecord::ReadOnlyRecord }

    attr_accessor :message

    def readonly?
      # allow the creation, you can also use a more complex condition to allow updates under certain conditions
      new_record? ? false : true
    end
  end
end
