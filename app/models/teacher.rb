class Teacher < ApplicationRecord
  belongs_to :subject
  belongs_to :certificate
end
