require_dependency "minerva/application_controller"

module Minerva
  class WorkflowsController < ApplicationController
    include Minerva::Base::Workflows
  end
end
