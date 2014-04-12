module PatientsHelper

  # Generates a css class based on a particular patient attribute 
  # and score. Used to draw the Care Manager's attention to areas
  # in which the patient is underperforming.
  def class_for_attribute(attribute, score)
    case score
    when 2 then "danger" 
    when 1 then "warning"
    else "success"
    end
  end
  
  # Create a td element for the given patient attribute. The element is 
  # colored based on the score given by the stat helper.
  def patient_attribute(patient, attribute)
    attr_value = patient.send(attribute)
    attr_score = PatientStatHelper.new(patient).send("#{attribute}_score")
    content_tag(:td, attr_value, class: class_for_attribute(attribute, attr_score))
  end
end