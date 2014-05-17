require 'fog/core/collection'
require 'fog/openstack/models/compute/availability_zone'

module Fog
  module Compute
    class OpenStack

      class AvailabilityZones < Fog::Collection

        model Fog::Compute::OpenStack::AvailabilityZone

        def all
          load(service.list_availability_zones.body['availabilityZoneInfo'])
        end
      end
    end
  end
end

