module GlobalNavigation
  class Engine < ::Rails::Engine
    config.assets.precompile << 'global_navigation_manifest.js' 
  end
end