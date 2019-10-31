class Exam < ApplicationRecord
   
    validates :name, presence: true, length: {maximum: 20}, format: { with: /\A[a-zA-Z ]+\z/x,
    message: "can only be letters" }
    
    validates :student_number, presence: true, length: {is: 9}, format: { with: /\A[+-]?\d+\z/,
    message: "can only numbers" }
     
end
