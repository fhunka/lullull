namespace :db do
  #describe "Populate"
  task :populate => :environment do
    100.times do |pi|
      p = Product.new
      p.name = "Product_#{pi+1}"
      
      5.times do |ii|
        p.images << Image.new(:name => "boxshot#{ii}.jpg")
      end
      
      p.save
    end
    
    
  end
end