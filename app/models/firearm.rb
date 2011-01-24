require 'weaponizable'

class Firearm < ActiveRecord::Base
  acts_as_weapon
end
