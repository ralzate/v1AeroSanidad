class CreateClinicHistories < ActiveRecord::Migration
  def change
    create_table :clinic_histories do |t|
      t.string :city
      t.string :department
      t.references :user, index: true, foreign_key: true
      t.string :cove
      t.string :mobiel_service
      t.integer :airport
      t.integer :type_service
      t.references :patient, index: true, foreign_key: true
      t.string :origin
      t.string :destination
      t.string :company
      t.string :accompanist_name
      t.integer :relationship
      t.string :phone
      t.text :reason_for_consultation
      t.text :current_illness
      t.boolean :neunatales
      t.text :neunatales_description
      t.boolean :patologicos
      t.text :patologicos_description
      t.boolean :quirurgicos
      t.text :quirurgicos_description
      t.boolean :farmacologicos
      t.text :farmacologicos_description
      t.boolean :alergicos
      t.text :alergicos_description
      t.boolean :toxicos
      t.text :toxicos_description
      t.boolean :traumaticos
      t.text :traumaticos_description
      t.boolean :hospitables
      t.text :hospitables_description
      t.boolean :atep_laboral
      t.text :atep_laboral_description
      t.boolean :familiar
      t.text :familiar_description
      t.boolean :inmunologicos
      t.text :inmunologios_description
      t.boolean :asociado_viajes_de_vuelo
      t.text :asociado_viajes_de_vuelo_description
      t.integer :menstrual_cycle
      t.string :gestational_age
      t.string :eco
      t.integer :fum
      t.boolean :pregnancy
      t.string :g
      t.string :p
      t.string :c
      t.string :a
      t.string :m
      t.string :v
      t.string :e
      t.boolean :cardiovascular
      t.text :cardiovascular_description
      t.boolean :respiratory
      t.text :respiratory_description
      t.boolean :abdominal
      t.text :abdominal_description
      t.boolean :genito_urinario
      t.text :genito_urinario_description
      t.string :neurological
      t.text :neurological_description
      t.boolean :mental
      t.text :mental_description
      t.boolean :sense_organ
      t.text :sense_organ_description
      t.boolean :skeletal_muscle
      t.text :skeletal_muscle_description
      t.string :skin_and_appendages
      t.text :skin_and_appendages_description
      t.string :ta_mmgh
      t.string :heart_rate
      t.string :breathing_frequency
      t.string :sat_of_o_ambiente
      t.string :sat_of_o_supplementary
      t.string :temperature
      t.string :weight_in_kilograms
      t.string :height_in_centimeters
      t.string :glucose
      t.string :measurement
      t.boolean :head
      t.text :head_description
      t.boolean :sense_organ
      t.string :sense_organ_description
      t.boolean :neck
      t.text :neck_description
      t.boolean :rib_cage
      t.text :rib_cage_description
      t.boolean :heart
      t.text :heart_description
      t.boolean :lungs
      t.text :lungs_description
      t.boolean :abdomen
      t.text :abdomen_description
      t.boolean :genitourinary
      t.text :genitourinary_description
      t.boolean :rectum
      t.text :rectum_description
      t.boolean :extremities
      t.text :extremities_description
      t.boolean :skin_and_appendages
      t.text :skin_and_appendages_description
      t.boolean :skeletal_muscle
      t.text :skeletal_muscle_description
      t.boolean :mental
      t.text :mental_description
      t.boolean :neurological
      t.text :neurological_description
      t.integer :alteration
      t.integer :eye_opening
      t.integer :verbal_answer
      t.integer :motor_response
      t.integer :other_signs
      t.text :analysis
      t.text :print_diagnosed
      t.text :plan_and_treatment
      t.text :observations_recommendations

      t.timestamps null: false
    end
  end
end
