module BootstrapFlashHelper
  
  ALERT_TYPES = [:error, :info, :success, :warning, :red, :yellow, :orange, :blue, :turquoise, :green]
  
  def bootstrap_flash(show_close_button = true)
    flash_messages = []
    flash.each do |type, message|
      next if message.blank?
      type = :success if type == :notice
      type = :error   if type == :alert
      next unless ALERT_TYPES.include?(type)

      Array(message).each do |msg|
        close_button = show_close_button ? content_tag(:button, raw("&times;"), class: "close", "data-dismiss" => "alert") : ""
        text = content_tag(:div, close_button + msg.html_safe, class: "alert fade in alert-#{type}", id: "flash-alert")
        flash_messages << text if message
      end
    end
    flash_messages.join("\n").html_safe
  end
  
  def simple_error_messages!(resource, show_close_button = true)
    return "" if resource.errors.empty?
    messages = resource.errors.full_messages.first
    close_button = show_close_button ? content_tag(:button, raw("&times;"), class: "close", "data-dismiss" => "alert") : ""
    content_tag(:div, close_button + messages, class: "alert alert-error fade in").html_safe
  end
  
end