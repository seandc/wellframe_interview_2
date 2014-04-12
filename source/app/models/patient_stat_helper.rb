class PatientStatHelper

  cattr_reader :thresholds

  # Table indicating when a patient statistic is cause for concern
  @@thresholds = {
    medication_rate: {warning: 0.75, danger: 0.5},
    exercise_rate: {warning: 0.50, danger: 0.25},
    happiness_score: {warning: 3, danger: 1}
  }
  
  # Create methods for computing scores for different stats
  # The method names are all of the form:[attribute_name]_score
  @@thresholds.keys.each do |attribute|
    define_method("#{attribute.to_s}_score") do
      attr_value = @patient.send attribute 
      if attr_value <= @@thresholds[attribute][:danger] then 2 
      elsif attr_value <= @@thresholds[attribute][:warning] then 1
      else 0
      end
    end
  end

  def initialize(patient)
    @patient = patient
  end
end