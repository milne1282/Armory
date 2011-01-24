class ActiveRecord::Base
  def self.acts_as_weapon
    include Weaponizable
  end
end

module Weaponizable
  def self.included(base)
    base.has_one :weapon, :as => :weaponizable, :autosave => true
    base.validate :weapon_must_be_valid
    base.alias_method_chain :weapon, :autobuild
    base.extend ClassMethods
    base.define_weapon_accessors
  end

  def weapon_with_autobuild
    weapon_without_autobuild || build_weapon
  end

  def method_missing(meth, *args, &blk)
    weapon.send(meth, *args, &blk)
  rescue NoMethodError
    super
  end

  module ClassMethods
    def define_weapon_accessors
      all_attributes = Weapon.content_columns.map(&:name)
      ignored_attributes = ["created_at", "updated_at", "weaponizable_type"]
      attributes_to_delegate = all_attributes - ignored_attributes
      attributes_to_delegate.each do |attrib|
        class_eval <<-RUBY
          def #{attrib}
            weapon.#{attrib}
          end

          def #{attrib}=(value)
            self.weapon.#{attrib} = value
          end

          def #{attrib}?
            self.weapon.#{attrib}?
          end
        RUBY
      end
    end
  end

protected
  def weapon_must_be_valid
    unless weapon.valid?
      weapon.errors.each do |attr, message|
        errors.add(attr, message)
      end
    end
  end
end