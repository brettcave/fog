module Fog
  module Compute
    class Cloudstack

      class Real
        # Updates a disk offering.
        #
        # {CloudStack API Reference}[http://cloudstack.apache.org/docs/api/apidocs-4.4/root_admin/updateDiskOffering.html]
        def update_disk_offering(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateDiskOffering') 
          else
            options.merge!('command' => 'updateDiskOffering', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

