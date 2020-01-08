require 'rspotify'

RSpotify.authenticate("d571e4fbe871458994520ef653c4e985", "aa03ad4a6ec144ed9f91607d599f82d4")
me = RSpotify::User.find('Mladen')

[2,3].each do |id|
p id
user= User.find_by(id:id).destroy
end