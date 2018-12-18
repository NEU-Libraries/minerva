module Minerva
  class State < ApplicationRecord
    belongs_to :assignment
    belongs_to :status
  end
end
