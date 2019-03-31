require 'bundler'
Bundler.require

module Concerns
  module Findable

    def self.find_by_name(name)
    self.all.find do |object|
      object.name == name
    end
    end

    def self.find_or_create_by_name(name)
      self.find_by_name(name) || self.create(name)
    end

  end
end

require_all 'lib'
