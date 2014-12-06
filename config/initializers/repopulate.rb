# runs at server start? Checks the sloths.json file against the database and adds any new images
  	file = File.read(File.join(Rails.root, "app/assets/sloths.json"))
  	sloths = ActiveSupport::JSON.decode(file)

  	sloths.each do |sloth|
  		unless Image.exists?(image_url: sloth["image_url"])
  			Image.create(sloth)
  			puts "image: " + sloth["image_url"] + "added to model"
  		end
  	end
  	puts "repopulate finished running"