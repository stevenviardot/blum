https://blum-v2.herokuapp.com/

compte user : user@user.com / useruser

compte user2 : user2@user.com / useruser2

compte user3 : client@client.com / vegeta

admin : admin@admin.com / admin123


if user_signed_in?
  @rents = Rent.where(:user_id => current_user).order("created_at DESC")
end

- le mec qui a créer le post en question
- le mec qui a créer la rent request

recioient : @rent.recipient = @post.user_id
