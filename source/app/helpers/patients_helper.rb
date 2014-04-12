module PatientsHelper

  # Generates a css class based on a particular patient attribute 
  # and value. Used to draw the Care Manager's attention to areas
  # in which the patient is underperforming.
  def class_for_attribute(attribute, value)
    if value <= Patient.thresholds[attribute][:danger] then "danger" 
    elsif value <= Patient.thresholds[attribute][:warning] then "warning"
    else "success"
    end
  end

  def patient_attribute(patient, attribute)
    attr_value = patient.send(attribute)
    content_tag(:td, attr_value, class: class_for_attribute(attribute, attr_value))
  end
end