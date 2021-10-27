# frozen_string_literal: true

require_relative 'contributor'

module Jobify
  # Model for Project
  class Job
    def initialize(_skils, location, job)
      @skils = skills
      @location = location
      @job = job
    end

    def date
      @job.date
    end

    def url
      @job.url
    end

    def title
      @job.title
    end

    def description
      @job.description
    end

    def company
      @job.company
    end
  end
end