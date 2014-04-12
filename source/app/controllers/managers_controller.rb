class ManagersController < ApplicationController
  def show
    @manager = Manager.find(params[:id])
    @patients = Patient.all
  end
end