module HstoreField
  class Engine < ::Rails::Engine
    isolate_namespace HstoreField

    initializer 'hstore_filed.assets_precompile', group: :all do |app|
      app.config.assets.precompile += ['hstore_field/hstore_field.js', 'hstore_filed/hstore_filed.css']
    end

    initializer 'hstore_field.helpers' do
        ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, HstoreField::ApplicationHelper
      end
    end
  end
end
