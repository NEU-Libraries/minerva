require_dependency "minerva/application_controller"

module Minerva
  class StatesController < ApplicationController
    include Minerva::Base::States
  end
end
