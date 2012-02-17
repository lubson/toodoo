Dir[Rails.root + "/spec/factories/*.rb"].each do |file|
  require file
end