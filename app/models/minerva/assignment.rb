module Minerva
  class Assignment < ApplicationRecord
    belongs_to :interface, :class_name => 'Minerva::Interface'
  end
end
