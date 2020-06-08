module HstoreField
  class Engine < ::Rails::Engine
    isolate_namespace HstoreField

    initializer 'hstore_filed.assets_precompile', group: :all do |app|
      app.config.assets.precompile += ['hstore_field/hstore_field.js', 'hstore_filed/hstore_filed.css']
    end
  end
end
