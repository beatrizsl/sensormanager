class Medida < ActiveRecord::Base
  belongs_to :sensor
  validates :nombre, uniqueness: true
  validates :nombre, :format => { :with => /\A[a-zA-Z0-9_-]+\z/,
  :message => "Solo se permiten caracteres alfanumericos y guiones" }


end
