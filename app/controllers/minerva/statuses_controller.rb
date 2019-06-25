require_dependency "minerva/application_controller"

module Minerva
  class StatusesController < ApplicationController
    include Minerva::Base::Statuses
  end
end
