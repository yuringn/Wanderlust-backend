Post.destroy_all   
Comment.destroy_all 
Like.destroy_all
User.destroy_all
Location.destroy_all
# Favorite.destroy_all

User.reset_pk_sequence
Location.reset_pk_sequence
Post.reset_pk_sequence
Comment.reset_pk_sequence
Like.reset_pk_sequence
# Favorite.reset_pk_sequence

#users
yuri = User.create(username: "yuringn", email: "yuri@gmail.com", password: "123", hometown:"Ho Chi Minh City, Vietnam", bio:" A traveler, a future software engineer", avatar:"https://images.unsplash.com/photo-1615233500022-01d251f3eb33?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80" ) 
haley = User.create(username: "haley", email: "haley@gmail.com", password: "123", hometown:"Wellington, New Zealand", bio:" A full-stack developer", avatar:"https://images.unsplash.com/photo-1592046952794-b98422f6a86c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" ) 
elise = User.create(username: "elise", email: "elise@gmail.com", password: "123", hometown:"Ho Chi Minh City, Vietnam", bio:" A restaurant manager", avatar:"https://images.unsplash.com/photo-1602479185069-cf2cfc4c463f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=802&q=80" ) 
missy = User.create(username: "missy", email: "rockstar@gmail.com", password: "123", hometown: "Washington DC, USA", bio: "A Rockstar", avatar:"https://s2.r29static.com/bin/entry/cc3/x/1820724/image.png")

#locations
france = Location.create(country:"France")
georgia = Location.create(country:"Georgia")
germany = Location.create(country:"Germany")
indonesia = Location.create(country:"Indonesia")
italy = Location.create(country:"Italy")
netherlands = Location.create(country:"Netherlands")
peru = Location.create(country:"Peru")
singapore = Location.create(country:"Singapore")
spain = Location.create(country:"Spain")
swiss = Location.create(country:"Switzerland")
usa = Location.create(country:"USA")
vietnam = Location.create(country:"Vietnam")

#posts
post1 = Post.create(user: haley, location: france, title:" Haley in Paris", visit_date:"10/10/2018", 
review:"Make sure to buy your tickets to museums online and print them or have them ready to go on your phone. Also, read all of the details on your tickets, what way you don't wait an extra half hour in the yellow line instead of the short green line I was supposed to go to at the Eiffel Tower.
Try and speak French as much as you can! Even if Paris is an international city, they do like it when people talk to them in their language or at least try to!", 
pictures:"https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1352&q=80")

post2 = Post.create(user: haley, location: swiss, title:" Switzerland: Montreux - Geneve", visit_date:"03/04/2019", 
review:"From the storybook villages and dizzying peaks of the Swiss Alps to the lakeside resorts of Geneva and Lucerne, landlocked Switzerland serves up some of Europe’s most enchanting scenery (along with some of its most delicious cheeses and chocolates, too).", 
pictures:"https://images.unsplash.com/photo-1530122037265-a5f1f91d3b99?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

post3 = Post.create(user: yuri, location: italy, title:" When in Rome do as the Romans do", visit_date:"02/03/2016", 
review:"Pantheon, Colosseum and Trevi Fountain are relatively nearby each other. Rome is full of churches and places of worship, so dress neatly and respectfully — cover bare shoulders and refrain from wearing short skirts or shorts when sightseeing.", 
pictures:"https://images.unsplash.com/photo-1525874684015-58379d421a52?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

post4 = Post.create(user: elise, location: spain, title:"Barcelona", visit_date:"05/05/2017", 
review:"Bustling markets, tree lined blocks, and fantastical architecture cozy up to one another in this dreamy Mediterranean beach town. If you love Paella, 'Casa Amàlia 1950' is a must restaurant to go.", 
pictures:"https://images.unsplash.com/photo-1515443961218-a51367888e4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2850&q=80")

post5 = Post.create(user: elise, location: singapore, title:"2 days in Singapore", visit_date:"01/02/2020", 
review:"This tiny island city-state is a study of fusions and contrasts bursting with wonders waiting to be explored. Tranquil parks abut futuristic skyscrapers and luxe shopping malls. 
A thriving street food scene and world-class restaurants offer countless ways to taste and sip your way through Singapore’s culinary melting pot. Your first trip to Singapore will prove that sometimes the best things come in small packages.", 
pictures:"https://images.unsplash.com/flagged/photo-1562503542-2a1e6f03b16b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1268&q=80")

post6 = Post.create(user: elise, location: peru, title:"Parón Lake - Cordillera Blanca", visit_date:"05/06/2019", 
review: "Worth the 3 hour trip from Huaraz. Road bad to very bad most of the way so organize reliable transport and make sure the transport waits for you for your return journey. 
Short very steep hike up to the viewing point, scrambling over rocks in part. When overcast the Paramount mountain in the background will not be visible.
Thank you Eric Adventures for organizing this trip",
pictures: "https://images.unsplash.com/photo-1528255915607-9012fda0f838?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1259&q=80")

post7 = Post.create(user: missy, location: usa, title:"Antelope Canyon and Horseshoe Bend Day Tour", visit_date:"03/20/2020", 
review: "We took the trip to horseshoe bend, the dam and antelope canyon from Flagstaff. BEST TRIP. J was the bomb, giving us flagstaff recs at the end for dinner 
(which fratellis is great pizza) and cool facts along the way. Horseshoe bend was breathtaking, tho a tad crowded. The dam I could do without but it was a great spot for the picnic lunch so totally good. 
The sandwiches are great and they bring plenty of fruit, pasta salad and drinks for everyone to enjoy",
pictures: "https://images.unsplash.com/photo-1506197603052-3cc9c3a201bd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

post8 = Post.create(user: missy, location: italy, title:"Art lovers, Venice awaits you !!!", visit_date:"09/09/2019", 
review: "Venice is an enchanting city that casts visitors under an intoxicating spell. It’s dreamy and romantic, with an undercurrent of mystery and drama. And while Carnival is only once a year, its mood is present year-round. The Grand Canal is the center of activity, with gondoliers singing to the passengers in their boats. 
The magnificent Piazza Sam Marco is another must-see hub.",
pictures:"https://images.unsplash.com/photo-1502726488490-f99c74217a37?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80")

post9 = Post.create(user: yuri, location: indonesia, title:"Ricefields tegallang, Bali", visit_date:"03/06/2018", 
review: "First morning of my backpacking trip around Bali. Woke up at 5 to meet up with a local I had never met which turned out to be the highlight of my trip.",
pictures:"https://images.unsplash.com/photo-1496531693211-31c5234a5ea9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

post10 = Post.create(user: yuri, location: france, title:"Palace of Versailles", visit_date:"11/19/2020", 
review: "So much to see and experience here. There is an amazing amount of history and the property is incredible. The palace itself is a work of art and the grounds are beautiful in their own right.  
Of all the places we visited we put on the most steps (22,000) while touring the palace and the grounds.  Be sure to wear comfy shoes and I would recommend downloading Rick Steves walking tour.",
pictures:"https://images.unsplash.com/photo-1566087247505-cd95ebd53df9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80")

post11 = Post.create(user: elise, location: swiss, title:"Matterhorn", visit_date:"12/03/2020", 
review: "Zermatt is a car-free town, which means that the only way to reach it is by train. Although the main line in and out of the town is the starting point for the famous Glacier Express train, if you're looking for the ultimate Matterhorn rail experience you're better off heading for the Gornergrat Bahn.
There are plenty of accommodation options. I stayed at Hotel Garni Testa Grigia, it is only a 5-minute walk from Zermatt Train Station and Sunnegga Express funicular.",
pictures:"https://images.unsplash.com/photo-1571274834067-3a24675547b4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")

post12 = Post.create(user: yuri, location: indonesia, title:"Bromo - Yogyakarta - Bali", visit_date:"02/02/2019", 
review: "Mount Batur is easy to get to from anywhere in Bali. You just have to figure out your transportation to get there – it takes about 1.5 hours by car from Ubud, and about 2-2.5 hours from Seminyak. 
We booked this Mount Batur Sunrise Trekking tour as it includes transportation to and from our hotel.",
pictures:"https://scontent-iad3-2.xx.fbcdn.net/v/t1.18169-9/12809777_10205644318415502_31907249215189337_n.jpg?_nc_cat=106&_nc_map=control&ccb=1-3&_nc_sid=174925&_nc_ohc=CzguypImXWEAX8deYlA&_nc_ht=scontent-iad3-2.xx&oh=d3f2d5c345bdf1df4e943e7c7a4ebed4&oe=60CD93BD")

post13 = Post.create(user: missy, location: vietnam, title:"How to spend 1 week in Vietnam", visit_date:"01/02/2021", 
review: "Day 1: Arrive in Ho Chi Minh City. Day 2: Cu Chi Tunnels. Day 3: Hanoi. Day 4: Tam Coc in Ninh Binh.
Day 5 and 6: Ha Long Bay. Day 7: Heading Home :(",
pictures:"https://images.unsplash.com/photo-1528127269322-539801943592?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

post14 = Post.create(user: haley, location: usa, title:"Road trip in USA", visit_date:"02/10/2020", 
review: "West Coast is a wonderful place to visit. You might consider flying into Los Angeles, renting a car and driving up the coast, stopping in Carmel, San Francisco, and then driving up into Washington state.",
pictures:"https://images.unsplash.com/photo-1601610694731-17860243f92a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")

post15 = Post.create(user: elise, location: germany, title:"3 days 2 nights in Berline", visit_date:"01/03/2018", 
review: "Buy a 72-hour Berlin Welcome Card. This includes transport on all metro and bus lines, plus a 50% discount at most of Berlin's cultural sights.
We stayed at 'The Circus Hostel'- very clean and friendly staff.",
pictures:"https://images.unsplash.com/photo-1554072675-66db59dba46f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1353&q=80")

#comments
comment1 = Comment.create(user: yuri, post: post1, content: "Great picture. Where did you stay in Paris ?")
comment2 = Comment.create(user: haley, post: post3, content: " Did you get inside Vatican City ?")
comment3 = Comment.create(user: elise, post: post2, content: "Thank you for the tips")
comment4 = Comment.create(user: missy, post: post2, content: "Thank you for the tips")
comment5 = Comment.create(user: haley, post: post12, content: "Thank you for the info. May I ask how long does it take to walk up Mount Batur")

#likes
like1 = Like.create(user: yuri, post: post1)
like2 = Like.create(user: haley, post: post3)
like3 = Like.create(user: elise, post: post3)
like4 = Like.create(user: missy, post: post4)
like5 = Like.create(user: elise, post: post2)



puts "Seeded ✅"