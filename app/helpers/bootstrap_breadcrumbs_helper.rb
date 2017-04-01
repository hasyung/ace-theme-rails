module BootstrapBreadcrumbsHelper
  
  def render_breadcrumbs(partial = 'twitter-bootstrap/breadcrumbs', divider = '/', &block)
    content = render partial: partial, layout: false, locals: { divider: divider }
    if block_given?
      capture(content, &block)
    else
      content
    end
  end
  
end