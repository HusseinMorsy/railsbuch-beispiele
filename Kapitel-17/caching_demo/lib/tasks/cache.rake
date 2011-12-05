desc "delete all products cache files"
task "cache:products:clear" do
  product_index = Rails.root.join('public','products.html')
  product_dir = Rails.root.join('public','products')
  index_dir = Rails.root.join('public','index.html')
  rm_rf([product_index,product_dir,index_dir])
end