module Fog
  module Compute
    class OpenStack
      class Real

        def list_availability_zones
          request(
            :expects  => [200, 203],
            :method   => 'GET',
            :path     => 'os-availability-zone/detail'
          )
        end

      end

      class Mock

        def list_hosts
          response = Excon::Response.new
          response.status = 200
          response.body = {
            "availabilityZoneInfo" => [
              {"zoneState" => {"available" => true}, "hosts" => nil, "zoneName" => "az1"}
            ]
          }
          response
        end
      end # mock
    end # openstack
  end # compute
end # fog
