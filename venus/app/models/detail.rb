class Detail < ActiveRecord::Base
  belongs_to :service
  belongs_to :client

  #no se si hay que validar las cosas aca, como se ocupa service y client
end
