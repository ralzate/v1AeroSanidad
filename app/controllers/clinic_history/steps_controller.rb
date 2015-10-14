class ClinicHistory::StepsController < ApplicationController
  include Wicked::Wizard
  steps *ClinicHistory.form_steps

  def show
    @clinic_history = ClinicHistory.find(params[:clinic_history_id])
    render_wizard
  end

  def update
    @clinic_history = ClinicHistory.find(params[:clinic_history_id])
    @clinic_history.update(clinic_history_params(step))
    render_wizard @clinic_history
  end

  private

  def clinic_history_params(step)
    permitted_attributes = case step
       when "a_clinic_history"
         [:city, :department, :user_id, :cove, :mobiel_service, :airport,
          :type_service, :patient_id, :origin, :destination, :company,
          :accompanist_name, :relationship, :phone, :reason_for_consultation,
          :current_illness]
       when "b_antecedentes"
         [:neunatales, :neunatales_description, :patologicos, :patologicos_description,
          :quirurgicos, :quirurgicos_description, :farmacologicos, :farmacologicos_description,
          :alergicos, :alergicos_description, :toxicos, :toxicos_description,
          :traumaticos, :traumaticos_description, :hospitables, :hospitables_description,
          :atep_laboral, :atep_laboral_description, :familiar, :familiar_description,
          :inmunologicos, :inmunologios_description, :asociado_viajes_de_vuelo,
          :asociado_viajes_de_vuelo_description, :menstrual_cycle, :gestational_age,
          :eco, :fum, :pregnancy, :g, :p, :c, :a, :m, :v, :e]
       when "c_revision_sistemas"
         [:cardiovascular, 
          :cardiovascular_description, :respiratory, :respiratory_description, 
          :abdominal, :abdominal_description, 
          :genito_urinario, :genito_urinario_description, :neurological, 
          :neurological_description, :mental, :mental_description, :sense_organ, 
          :sense_organ_description, :skeletal_muscle, :skeletal_muscle_description, 
          :skin_and_appendages, :skin_and_appendages_description]
       when "d_examen_fisico"
         [:ta_mmgh, :heart_rate, 
          :breathing_frequency, :sat_of_o_ambiente, :sat_of_o_supplementary, 
          :temperature, :weight_in_kilograms, :height_in_centimeters, :glucose, 
          :measurement, :head, :head_description, :sense_organ, :sense_organ_description, 
          :neck, :neck_description, :rib_cage, :rib_cage_description, :heart, 
          :heart_description, :lungs, :lungs_description, :abdomen, :abdomen_description, 
          :genitourinary, :genitourinary_description, :rectum, :rectum_description, 
          :extremities, :extremities_description, :skin_and_appendages, 
          :skin_and_appendages_description, :skeletal_muscle, 
          :skeletal_muscle_description, :mental, :mental_description, :neurological, 
          :neurological_description, :alteration, :eye_opening, :verbal_answer, 
          :motor_response, :other_signs]
       when "e_info_adicional"
         [:analysis, :print_diagnosed, 
          :plan_and_treatment, :observations_recommendations]
       end

    params.require(:clinic_history).permit(permitted_attributes).merge(form_step: step)
  end

end

