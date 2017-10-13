require_relative 'patient'

new_patient = Patient.new("Jisie", "David")
puts new_patient.first_name
puts new_patient.last_name

begin 
    puts patient_contact_info
rescue 
    puts "ERROR 1: undefined local variable or method `patient_contact_info' for main:Object (NameError)"
end

begin 
    puts new_patient.patient_status(:coma)
rescue 
    puts "ERROR 2: Argument is not a string (ArgumentError)"
end 

begin
    puts new_patient.patient_currently_admitted?
rescue
    puts "ERROR 3: in `patient_currently_admitted?': wrong number of arguments (given 0, expected 1) (ArgumentError)"
end

begin
    puts new_patient.patient_new_total(125)
rescue
    puts "ERROR 4: in `/': divided by 0 (ZeroDivisionError)"
end

begin
    new_patient.add_med_to_list("lipitor", 123.12)
rescue
    puts "ERROR 5: in `add_med_to_list': 123.12 is not a integer (ArgumentError)"
end

begin
    new_patient.patient_medications_list
rescue
    puts "ERROR 6: in `patient_medications_list': Medications list is not valid. (RuntimeError)"
end