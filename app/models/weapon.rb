class Weapon < ActiveRecord::Base
  has_one :purchase_information, :as=>:purchase_info
  
  belongs_to :weaponizable, :polymorphic => true, :dependent => :destroy
  # validates_presence_of :name # for example
end
