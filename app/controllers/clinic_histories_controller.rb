class ClinicHistoriesController < ApplicationController
  # before_action :set_clinic_history, only: [:show, :edit, :update, :destroy]
  before_action :set_clinic_history

  # GET /pets
  # GET /pets.json
  def index
    # Normally you'd have more complex requirements about
    # when not to show rows, but we don't show any records that don't have a name

    @clinic_histories = @patient.clinic_histories.all

  end

  # GET /pets/1
  # GET /pets/1.json
  def show
  end

  # GET /countries/1/edit
  def edit
  end


  # GET /pets/new
  def new
    @clinic_history = ClinicHistory.new
  end

  # POST /pets
  # POST /pets.json
  def create
    @clinic_history = ClinicHistory.new
    @clinic_history.patient_id = @patient.id
    @clinic_history.save(validate: false)
    redirect_to patient_clinic_history_step_path(@patient, @clinic_history, ClinicHistory.form_steps.first)
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @clinic_history.destroy
    respond_to do |format|
      format.html { redirect_to clinic_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_history
      @patient = Patient.find(params[:patient_id])
      @clinic_history = ClinicHistory.find(params[:id]) if params[:id]
    end

   
    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_history_params
      params.require(:clinic_history).permit(:city, :department, 
        :user_id, :cove, :mobiel_service, :airport, :type_service, 
        :patient_id, :origin, :destination, :company, :accompanist_name, 
        :relationship, :phone, :reason_for_consultation, :current_illness, 
        :neunatales, :neunatales_description, :patologicos, 
        :patologicos_description, :quirurgicos, :quirurgicos_description, 
        :farmacologicos, :farmacologicos_description, :alergicos, 
        :alergicos_description, :toxicos, :toxicos_description, :traumaticos, 
        :traumaticos_description, :hospitables, :hospitables_description, 
        :atep_laboral, :atep_laboral_description, :familiar, :familiar_description, 
        :inmunologicos, :inmunologios_description, :asociado_viajes_de_vuelo, 
        :asociado_viajes_de_vuelo_description, :menstrual_cycle, :gestational_age, 
        :eco, :fum, :pregnancy, :g, :p, :c, :a, :m, :v, :e, :cardiovascular, 
        :cardiovascular_description, :respiratory, :abdominal, :abdominal_description, 
        :genito_urinario, :genito_urinario_description, :neurological, 
        :neurological_description, :mental, :mental_description, :sense_organ, 
        :sense_organ_description, :skeletal_muscle, :skeletal_muscle_description, 
        :skin_and_appendages, :skin_and_appendages_description, :ta_mmgh, :heart_rate, 
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
        :motor_response, :other_signs, :analysis, :print_diagnosed, 
        :plan_and_treatment, :observations_recommendations, :respiratory_description)
    end
end
