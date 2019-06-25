require_dependency "minerva/application_controller"

module Minerva
  class InterfacesController < ApplicationController
    include Minerva::Base::Interfaces
  end
end
