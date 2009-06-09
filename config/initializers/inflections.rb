# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format 
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /^(.*?)a$/i, '\1e'
  inflect.plural /^(.*?)o$/i, '\1i'
  inflect.plural /^(.*?)e$/i, '\1i'

  inflect.singular /^(.*?)e$/i, '\1a'
  inflect.singular /^(.*?)i$/i, '\1o'
  inflect.singular /^(.*?)i$/i, '\1e'

  inflect.plural /^(uov)a$/i, '\1o'
  inflect.singular /^(uov)o$/i, '\1a'

  inflect.uncountable 'quantita'
end
