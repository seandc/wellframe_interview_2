class ManagersController < ApplicationController
  def show
    @manager = Manager.find(params[:id])

    # This code sorts the patients by their need, so
    # that the care manager can prioritize. This is
    # not the most efficient way of doing this sorting,
    # but it will do for demo purposes.
    @patients = Patient.all.sort do | a, b |
      stat_a = PatientStatHelper.new(a)
      stat_b = PatientStatHelper.new(b)
      stat_a.patient_score <=> stat_b.patient_score
    end.reverse
  end
end