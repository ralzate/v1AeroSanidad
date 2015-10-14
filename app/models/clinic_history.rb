class ClinicHistory < ActiveRecord::Base


  belongs_to :user
  belongs_to :patient

  cattr_accessor :form_steps do
    %w(a_clinic_history b_antecedentes c_revision_sistemas d_examen_fisico e_info_adicional)
  end

  attr_accessor :form_step

  #validates :city, :department, presence: true, if: -> { required_for_step?(:identity) }
  #validates :cove, :mobiel_service, presence: true, if: -> { required_for_step?(:characteristics) }
  #validates :airport, presence: true, if: -> { required_for_step?(:instructions) }

  def required_for_step?(step)
    return true if form_step.nil?
    return true if self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
  end



end
