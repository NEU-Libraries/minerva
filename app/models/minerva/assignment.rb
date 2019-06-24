module Minerva
  class Assignment < ApplicationRecord
    belongs_to :interface, optional: true
  end
end
