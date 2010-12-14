namespace :db do
  #describe "Seed"
  task :seed => :environment do
    #MongoMapper.collections.each(&:remove)
    #Store.all.each{|s| s.delete }
    #User.all.each{|s| s.delete }
    #Transaction.all.each{|s| s.delete }
    
    5.times do |s|
      store = Store.new
      store.name = "STORE_#{s}"
      10.times do |u|
        user = User.new
        user.name = "USER_#{u}"
        user.store = store
        10.times do |t|
          Transaction.create(:user => user, :store => store, :amount => 123)
        end
        user.save
      end
      
      5.times do |t|
        taxonomy = Taxonomy.new
        taxonomy.name = "Taxonomy_#{t}"
        taxonomy.store = store
        taxonomy.save
      end
      
      store.save
    end
  end
  
  #describe "Populate"
  task :populate => :environment do
    Product.destroy_all
    Image.destroy_all
    Package.destroy_all
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
      p.name = "Package_#{pp}"
      p.save
    end
  end
end