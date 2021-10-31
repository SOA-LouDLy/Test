# frozen_string_literal: true

require 'roda'
require 'slim'

module Jobify
  # Web App
  class App < Roda
    plugin :render, engine: 'slim', views: 'app/views'
    plugin :assets, css: 'style.css', path: 'app/views/assets'
    plugin :halt

    route do |routing|
      routing.assets
        routing.root do
          view 'home'
        end
        routing.on 'jobs' do
          routing.is do
            routing.post do
              skill = routing.params['skill'].downcase
              location = routing.params['location'].downcase
              routing.halt 400 if skill.empty? || location.empty?
              routing.redirect "jobs/#{skill}/#{location}"
            end
          end

          routing.on String, String do |skill, location|
            routing.get do
              careerjet_job = CareerJet::JobMapper
                              .new(JOB_TOKEN)
                              .get_jobs(skill, location)

              view 'job', locals: { jobs: careerjet_job }
            end
          end
        end
    end
  end
end
