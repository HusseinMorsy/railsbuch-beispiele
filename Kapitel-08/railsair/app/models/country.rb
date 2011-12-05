class Country < ActiveRecord::Base
  has_many :airports
  
  has_many :international_airports,
           :class_name => "Airport",
           :conditions => {:international => true}
  has_many :regional_airports,
            :class_name => "Airport",
            :conditions => {:international => false}

   # has_many :airports do
   #    def international(status)
   #      where(international: status)
   #    end
   #  end
  
end
