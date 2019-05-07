User.destroy_all
Destination.destroy_all
Post.destroy_all


leah = User.create(username: "LeahB", email: "leahb@gmail.com", password: "Hello!")
harriet = User.create(username: "Harry", email: "harry@gmail.com", password: "Password")
patrick = User.create(username: "Paddy", email: "paddy@gmail.com", password: "Goodbye")

london = Destination.create(location: "London")
majorca = Destination.create(location: "Majorca")
paris = Destination.create(location: "Paris")
barcelona = Destination.create(location: "Barcelona")
toronto = Destination.create(location: "Toronto")
new_york = Destination.create(location: "New York")

p1 = Post.create(user: leah, title: "Amazing Holiday", content: "It was an amazing holiday!", destination: toronto)
p2 = Post.create(user: harriet, title: "Expensive", content: "It was expensive!", destination: london)
p3 = Post.create(user: patrick, title: "Lovely Trip", content: "It was a lovely trip!", destination: majorca)
p4 = Post.create(user: leah, title: "Sangri-gri", content: "We drank lots of Sangria!", destination: barcelona)
p5 = Post.create(user: harriet, title: "Cultural Hub", content: "What a great city!", destination: new_york)
p6 = Post.create(user: patrick, title: "Sweet locaysh", content: "Amazing!", destination: paris)
