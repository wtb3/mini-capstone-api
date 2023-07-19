Supplier.create!([
  { name: "Amazon", email: "amazon@example.com", phone_number: "18008008080" },
  { name: "Think Geek", email: "tg@example.com", phone_number: "18000008008" },
])

Product.create!([
  { name: "WNYX Mug", price: 2.0, image_url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", quantity: 12 },
  { name: "Sonic Screwdriver", price: 9.0, image_url: "https://sketchfab.com/blogs/community/wp-content/uploads/2020/04/image2-2.jpg", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", quantity: 99 },
  { name: "Hitchhiker's Guide to the Galaxy", price: 42.0, image_url: "http://www.notcot.com/images/guide.gif", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", quantity: 91 },
  { name: "DnD Dice set", price: 57.0, image_url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", description: "Take down mighty dragons with this timeless set of 20 sided wonders", quantity: 14 },
  { name: "Yoda sleeping bag", price: 40.0, image_url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png", description: "For real", quantity: 1 },
  { name: "Lightsaber!!!!", price: 270.0, image_url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster", quantity: 2 },
  { name: "Space Cowboy Laser Gun", price: 170.0, image_url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", description: "This weapon has no other description than, Shiney!", quantity: 67 },
])

Product.create!([
  { name: "Product 1", price: 10, image_url: "test.com", description: "Description 1" },
  { name: "Product 2", price: 20, image_url: "test.com", description: "Description 2" },
])

Order.create!([
  { user_id: 1, product_id: 1, quantity: 2, subtotal: 4, tax: 0.36, total: 4.36 },
  { user_id: 2, product_id: 3, quantity: 1, subtotal: 5, tax: 0.45, total: 5.45 },
# Add more order records as needed
])

# Supplier.create(name: "Supplier 1", email: "supplier1@example.com", phone_number: "1234567890")
# Supplier.create(name: "Supplier 2", email: "supplier2@example.com", phone_number: "9876543210")

# product = Product.new({ name: "WNYX Mug", price: 2, description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", image_url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg" })
# product.save

# product = Product.new({ name: "Hitchhiker's Guide to the Galaxy", price: 42, description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", image_url: "http://www.notcot.com/images/guide.gif" })
# product.save

# product = Product.new({ name: "Lightsaber", price: 270, description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster", image_url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif" })
# product.save

# product = Product.new({ name: "Space Cowboy Laser Gun", price: 170, description: "This weapon has no other description than, Shiney!", image_url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776" })
# product.save

# product = Product.new({ name: "DnD Dice set", price: 57, description: "Take down mighty dragons with this timeless set of 20 sided wonders", image_url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg" })
# product.save

# product = Product.new({ name: "Sonic Screwdriver", price: 9, description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", image_url: "https://sketchfab.com/blogs/community/wp-content/uploads/2020/04/image2-2.jpg" })
# product.save

# product = Product.new({ name: "Yoda sleeping bag", price: 40, description: "For real", image_url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png" })
# product.save
