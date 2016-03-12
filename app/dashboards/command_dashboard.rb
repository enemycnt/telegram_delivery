require "administrate/base_dashboard"

class CommandDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    screen: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    type: Field::String,
    description: Field::Text,
    param: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :screen,
    :id,
    :title,
    :type,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :screen,
    :id,
    :title,
    :type,
    :description,
    :param,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :screen,
    :title,
    :type,
    :description,
    :param,
  ]

  # Overwrite this method to customize how commands are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(command)
  #   "Command ##{command.id}"
  # end
end
