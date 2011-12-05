class Client < ActiveRecord::Base
  def fullname
    "#{firstname} #{lastname}"
  end
end
