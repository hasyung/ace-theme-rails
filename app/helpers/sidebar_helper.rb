module SidebarHelper
  
  def active_page(controllers, options = {})
    class_name = options.fetch(:value, 'active')
    actions = options.fetch(:actions, [])
    controllers.map! { |c| File.join(options[:namespace], c) } if options[:namespace] and options[:namespace].is_a?(String)
    return class_name if controllers.include?(params[:controller]) and actions.include?(params[:action])
    return class_name if controllers.include?(params[:controller])
    return nil
  end
  
end
