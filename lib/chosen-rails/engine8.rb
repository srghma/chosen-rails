module Chosen
  module Rails
    class Engine8 < ::Rails::Engine
      initializer 'chosen.assets.precompile' do |app|
        app.config.assets.precompile += %w(
          chosen-sprite*.png
        )
      end

      rake_tasks do
        load 'chosen-rails/tasks.rake'
      end
    end
  end
end
