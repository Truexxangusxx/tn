class Detalle < ActiveRecord::Base
  belongs_to :producto
  belongs_to :columna
end
