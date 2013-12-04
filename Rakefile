# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Zng::Application.load_tasks


desc "seed database with csv files"
task "db:seed" do

  CSV.foreach('app/assets/csvs/colors.csv', headers: true) do |row|
    Color.create(color: row[0].downcase)
  end

  CSV.foreach('app/assets/csvs/patterns.csv', headers: true) do |row|
    Pattern.create(pattern: row[0].downcase)
  end

  CSV.foreach('app/assets/csvs/products.csv', headers: true) do |row|
    product = Product.new(sku: row[0].downcase, title: row[1], image: row[4])
    product.color = Color.find_by(color:row[3].downcase)
    product.pattern = Pattern.find_by(pattern: row[2].downcase)
    product.save
  end

end
