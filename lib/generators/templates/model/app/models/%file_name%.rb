<% with_modules(modules) do -%>
class <%= class_name %>
  include MongoMapper::Document
end
<% end -%>
