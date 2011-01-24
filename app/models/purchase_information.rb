class PurchaseInformation < ActiveRecord::Base
  belongs_to :purchase_info, :polymorphic=>true
end
