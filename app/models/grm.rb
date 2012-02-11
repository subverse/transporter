class Grm < ActiveRecord::Base
    establish_connection "tdwb_#{Rails.env}"
end
