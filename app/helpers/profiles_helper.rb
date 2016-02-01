module ProfilesHelper
def verify
	@id == @profile.user.id
	end
end
