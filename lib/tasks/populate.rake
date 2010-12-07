namespace :db do
  #describe "Seed"
  task :seed => :environment do
    Store.all.each{|s| s.delete }
    User.all.each{|s| s.delete }
    Transaction.all.each{|s| s.delete }
    
    5.times do |s|
      store = Store.new
      store.name = "STORE_#{s}"
      puts "STORE #{s}"
      10.times do |u|
        user = User.new
        user.name = "USER_#{u}"
        user.store = store
        10.times do |t|
          Transaction.create(:user => user, :store => store, :amount => 123)
        end
        user.save
      end
      store.save
    end
  end
  
  #describe "Populate"
  task :populate => :environment do
    Product.all.each{|s| s.delete }
    Image.all.each{|s| s.delete }
    10.times do |pi|
      p = Product.new
      p.name = "Product_#{pi+1}"
      
      5.times do |ii|
        p.images << Image.new(:name => "boxshot#{ii}.jpg")
      end
      
      p.save
    end
    products = Product.all
    10.times do |pp|
      p = Package.new
        p.products << products[pp]
    end
  end
end