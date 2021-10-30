# frozen_string_literal: true

require 'dry-types'
require 'dry-struct'

module Jobify
  module Entity
    # Domain entity for any job
    class Job < Dry::Struct
      include Dry.Types

      attribute :id,            Integer.optional
      attribute :date,          Strict::String
      attribute :url,           Strict::String
      attribute :title,         Strict::String
      attribute :description,   Strict::String
      attribute :company,       Strict::String
      attribute :locations,     Strict::String
      # attribute :skills        Strict::Array.of(Skill)
      # attribute :place         Place
    end
  end
end
