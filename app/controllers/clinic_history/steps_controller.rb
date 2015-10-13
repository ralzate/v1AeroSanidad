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
                           when "identity"
                             [:city, :department]
                           when "characteristics"
                             [:cove, :mobiel_service]
                           when "instructions"
                             [:airport]
                           end

    params.require(:clinic_history).permit(permitted_attributes).merge(form_step: step)
  end

end

