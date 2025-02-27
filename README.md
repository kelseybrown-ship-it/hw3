# ENTR-451 Homework #3

Full instructions at https://entr451.com/homework-3/

<p>
  <a href="/places/new?place_id=<%= @place["id"] %>">New Place</a>
</p>

  <input type="hidden" name="place_id" value="<%= @place["id"] %>" id="place_id_input">

  
  <p>
    <label for="place_id">Place</label>
    <input type="integer" name="place_id" value="<%= @post["place_id"] %>">
</p>

  <a href="/places/<%= @place["id"] %>">Cancel</a>

      @posts = Post.where({ "place_id" => @place["id"] })

          @place = Place.find_by({ "id" => params["place_id"] })
    @posts = Post.where({ "place_id" => @place["id"] })

    <ul>
  <% for post in @posts %>
    <li>
      <%= post["activity"] %>
      <br>
      <%= post["date"] %>
      <%= post["details"] %>
    </li>
  <% end %>
</ul>