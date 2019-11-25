module BuildingSyncRails
  class Engine < ::Rails::Engine
    config.to_prepare do
      require_relative "../../config/initializers/BuildingSync_initializer.rb"
      require_relative "../../config/initializers/soap4r_ns_fix.rb"
      require_relative "../../config/initializers/soap4r_xsd_datatypes_fix.rb"

      require_relative "../../lib/building_sync_tk.rb"
    end

    # initializer "static" do |app|
    #   app.middleware.insert_before(::ActionDispatch::Static, ::ActionDispatch::Static, ::File.join(root, "public"))
    # end
  end
end
