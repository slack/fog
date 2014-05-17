require 'fog/core/model'

module Fog
  module Compute
    class OpenStack
      class AvailabilityZone < Fog::Model

        identity :name, :aliases => "zoneName"
      end
    end
  end
end
