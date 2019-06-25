require_dependency "minerva/application_controller"

module Minerva
  class AssignmentsController < ApplicationController
    include Minerva::Base::Assignments
  end
end
