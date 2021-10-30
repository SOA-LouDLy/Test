# frozen_string_literal: true

# require 'httmultiparty'
# require 'yaml'
# require 'pdf-reader'

# config = YAML.safe_load(File.read('../config/secrets.yml'))

# class ResumeParser
#   include HTTMultiParty
#   base_uri 'https://api.affinda.com/v1'
# end

# response = ResumeParser.post('/', :query => {
#     :foo      => 'bar',
#     :somefile => File.new('README.md')
#   })