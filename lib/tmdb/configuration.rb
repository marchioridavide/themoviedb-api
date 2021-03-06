# frozen_string_literal: true
module Tmdb
    class Configuration < Struct
        def self.get(filters = {})
            result = Resource.new('/configuration', filters).get
            new(result)
        end
    end
end
