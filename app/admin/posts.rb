ActiveAdmin.register Post do
  index do
    selectable_column
    column :id
    column :title
    column :summary
    column :body
    actions
  end
end
