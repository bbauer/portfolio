ActiveAdmin.register CaseStudy do
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :content, :as => :ckeditor
    end
    f.buttons
  end
end
