class Patient < ActiveRecord::Base
  cattr_reader :thresholds

  # Table indicating when a patient statistic is cause for concern
  @@thresholds = {
    medication_rate: {warning: 0.75, danger: 0.5},
    exercise_rate: {warning: 0.50, danger: 0.25},
    happiness_score: {warning: 3, danger: 1}
  }
end
