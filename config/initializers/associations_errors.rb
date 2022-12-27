# frozen_string_literal: true

module ActionView::Helpers::ActiveModelInstanceTag
  def error_message_with_associations
    if @method_name.end_with?('_id')
      object.errors[@method_name] + object.errors[@method_name.chomp('_id')]
    else
      object.errors[@method_name]
    end
  end

  alias error_message error_message_with_associations
end
