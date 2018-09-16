https://blum-v2.herokuapp.com/

compte user : user@user.com / useruser

compte user2 : user2@user.com / useruser2

compte user3 : client@client.com / vegeta

admin : admin@admin.com / admin123

@posts = Post.where(["name LIKE ?", "%#{params[:search]}%"])

<%= form_tag offers_path, :method => 'get' do %>
  <%= text_field_tag :search, params[:search] %>
  <%= submit_tag "search" %>
<% end %>
