namespace :items do
  task :update_depreciation => :environment do
    Item.all.each do |i|
      months_since_created = (Date.today.year * 12 + Date.today.month) - (i.created_at.year * 12 + i.created_at.month)
      i.depreciation_amount = i.vehicle.price * (months_since_created * 0.02)
      i.save
    end
  end  
end
