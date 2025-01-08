module Chosen
  module Rails
    class Engine4 < ::Rails::Engine
      config.assets.precompile += %w(
        chosen-sprite*.png
      )

      rake_tasks do
        load 'chosen-rails/tasks.rake'
      end
    end
  end
end
