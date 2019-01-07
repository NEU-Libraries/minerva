module Minerva
  class Workflow < ApplicationRecord
    belongs_to :project
    belongs_to :creator, class_name: "Minerva::User"
  end
end
