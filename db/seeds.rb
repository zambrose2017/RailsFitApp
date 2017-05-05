10.times do |blog|
  Blog.create!(
    title: "My Post #{blog}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )
end

puts "10 blog post created"

9.times do |video_link|
  Video.create!(
    title: "video title: #{}", 
    body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book." , 
    main_image: "http://placehold.it/600x400", 
    thumb_image: "http://placehold.it/350x200"
    )

end
puts "10 video links created"