module Paperform
  class PartialSubmission
    attr_reader :token

    BASE_URL = 'https://api.paperform.co/v1/partial-submissions'

    def initialize(token)
      @token = token
    end

    def find(id)
    end

    def list(form_id, options = nil)
      params = { :form => form_id }.merge!(options)

      response = Curl.get(BASE_URL, params) do |http|
        http.headers['Authorization'] = "Bearer #{token}"
      end

      response.body
    end

  end
end
