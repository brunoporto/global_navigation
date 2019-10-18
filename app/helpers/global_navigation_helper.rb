module GlobalNavigationHelper
  def global_navigation_container(attrs={}, &block)
  classes = attrs[:class] || ''
  classes << ' closed' unless show_navigation_menu?
  render( layout: 'layouts/global_navigation/layout',
          locals: {classes: classes},
          &block)
  end

  def show_navigation_menu?
    # content_for?(:global_navigation_menu_top) ||
    #   content_for?(:global_navigation_menu_bottom) || 
    #   (
    #     active_navigation_item_container(context: :global, level: 2)&.items&.count&.positive? && 
    #     active_navigation_item_container(context: :global, level: 2)&.dom_attributes.try(:[], :type) != :float_menu
    #   )
    active_navigation_item_container(context: :global, level: 2)&.items&.count&.positive? && 
    active_navigation_item_container(context: :global, level: 2)&.dom_attributes.try(:[], :type) != :float_menu
  end
end