User.create!([
  { name: "Steven", email: "test@test.com", password: "password1", admin: true },
  { name: "Steven", email: "test2@test.com", password: "password1", admin: false },
  { name: "Rachel", email: "test3@test.com", password: "password1", admin: false },
  { name: "Stevie", email: "test4@test.com", password: "password1", admin: false },
  { name: "Steveo", email: "test5@test.com", password: "password1", admin: false },
])
Supplier.create!([
  { name: "Game Store One", email: "games@test.com", phone_number: "222-555-9999" },
  { name: "Game Store Two", email: "game2s@test.com", phone_number: "222-555-2222" },
  { name: "Games Games Games", email: "ggg@test.com", phone_number: "1234567890" },
  { name: "Games and More", email: "gamesnmore@test.com", phone_number: "9876543210" },
])
Product.create!([
  { name: "Bunny Kingdom", price: "30.0", description: "A board game by Richard Garfield", inventory: 3, supplier_id: 4 },
  { name: "Haggis", price: "20.0", description: "A card game by Sean Ross", inventory: 1, supplier_id: 2 },
  { name: "Tigris and Euphrates", price: "60.0", description: "A board game by Reiner Knizia", inventory: 6, supplier_id: 2 },
  { name: "Century: Spice Road", price: "25.0", description: "A board game by Emerson Matsuuchi", inventory: 6, supplier_id: 2 },
  { name: "Long Shot: The Dice Game", price: "25.0", description: "A board game by Chris Handy", inventory: 5, supplier_id: 2 },
  { name: "Crokinole", price: "200.0", description: "A board game by Canadians", inventory: 3, supplier_id: 2 },
  { name: "Reef Encounter", price: "30.0", description: "A board game by Richard Breese", inventory: 4, supplier_id: 3 },
  { name: "A Feast for Odin", price: "60.0", description: "A board game by Uwe Rosenberg", inventory: 2, supplier_id: 1 },
  { name: "Smartphone Inc", price: "60.0", description: "A board game by Ivan Lashin", inventory: 2, supplier_id: 3 },
  { name: "Brass: Lancashire", price: "60.0", description: "A board game by Martin Wallace", inventory: 1, supplier_id: 4 },
  { name: "Isle of Skye", price: "30.0", description: "A board game by Alexander Pfister", inventory: 3, supplier_id: 1 },
  { name: "Carcassonne", price: "25.0", description: "A board game by Klaus Jurgen-Wrede", inventory: 2, supplier_id: 1 },
  { name: "Lost Ruins of Arnak", price: "40.0", description: "A board game by Min & Elwen", inventory: 4, supplier_id: 3 },
])
Order.create!([
  { user_id: 3, subtotal: "25.0", tax: "2.0", total: "27.0" },
  { user_id: 4, subtotal: "600.0", tax: "30.0", total: "630.0" },
  { user_id: 4, subtotal: "2.02", tax: "2.02", total: "2.02" },
  { user_id: 4, subtotal: "2.02", tax: "2.02", total: "2.02" },
  { user_id: 4, subtotal: "2.02", tax: "2.02", total: "2.02" },
  { user_id: 4, subtotal: nil, tax: "18.0", total: nil },
  { user_id: 4, subtotal: nil, tax: "3.03", total: nil },
  { user_id: 4, subtotal: nil, tax: "54.0", total: nil },
  { user_id: 4, subtotal: "600.0", tax: "54.0", total: "654.0" },
])
Image.create!([
  { url: "https://cf.geekdo-images.com/vK14HP6-dgpF0kQ2ajw0og__imagepagezoom/img/xnwo-HZFcbsBp27xgCpm_r7HJaA=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic168169.jpg", product_id: 1 },
  { url: "https://cf.geekdo-images.com/vK14HP6-dgpF0kQ2ajw0og__imagepagezoom/img/xnwo-HZFcbsBp27xgCpm_r7HJaA=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic168169.jpg", product_id: 1 },
  { url: "https://cf.geekdo-images.com/vK14HP6-dgpF0kQ2ajw0og__imagepagezoom/img/xnwo-HZFcbsBp27xgCpm_r7HJaA=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic168169.jpg", product_id: 1 },
  { url: "https://cf.geekdo-images.com/j9RO81ihYw0_oPj6iqV_bA__imagepagezoom/img/levYQ-leZ5RrdstFbajNZKvJK9o=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic6682376.jpg", product_id: 4 },
  { url: "https://cf.geekdo-images.com/j9RO81ihYw0_oPj6iqV_bA__imagepagezoom/img/levYQ-leZ5RrdstFbajNZKvJK9o=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic6682376.jpg", product_id: 4 },
  { url: "https://cf.geekdo-images.com/j9RO81ihYw0_oPj6iqV_bA__imagepagezoom/img/levYQ-leZ5RrdstFbajNZKvJK9o=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic6682376.jpg", product_id: 4 },
  { url: "https://cf.geekdo-images.com/wirPJ4tfSDafd-TNhVr7eA__imagepage/img/QGBSO5912RpHm7tAYwqmXEiqvPs=/fit-in/900x600/filters:no_upscale():strip_icc()/pic7663518.png", product_id: 2 },
  { url: "https://cf.geekdo-images.com/wirPJ4tfSDafd-TNhVr7eA__imagepage/img/QGBSO5912RpHm7tAYwqmXEiqvPs=/fit-in/900x600/filters:no_upscale():strip_icc()/pic7663518.png", product_id: 2 },
  { url: "https://cf.geekdo-images.com/wirPJ4tfSDafd-TNhVr7eA__imagepage/img/QGBSO5912RpHm7tAYwqmXEiqvPs=/fit-in/900x600/filters:no_upscale():strip_icc()/pic7663518.png", product_id: 2 },
  { url: "https://cf.geekdo-images.com/tHVtPzu82mBpeQbbZkV6EA__imagepagezoom/img/48ahzluGaNs12es1gL6XgGccVYc=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3469216.jpg", product_id: 3 },
  { url: "https://cf.geekdo-images.com/tHVtPzu82mBpeQbbZkV6EA__imagepagezoom/img/48ahzluGaNs12es1gL6XgGccVYc=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3469216.jpg", product_id: 3 },
  { url: "https://cf.geekdo-images.com/tHVtPzu82mBpeQbbZkV6EA__imagepagezoom/img/48ahzluGaNs12es1gL6XgGccVYc=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3469216.jpg", product_id: 3 },
  { url: "https://cf.geekdo-images.com/Yp3TG2cLcY-AfBJogTiGHg__imagepagezoom/img/eMZ4sIPNJZT_AYpyR-PY4L-OXyg=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic85905.jpg", product_id: 5 },
  { url: "https://cf.geekdo-images.com/Yp3TG2cLcY-AfBJogTiGHg__imagepagezoom/img/eMZ4sIPNJZT_AYpyR-PY4L-OXyg=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic85905.jpg", product_id: 5 },
  { url: "https://cf.geekdo-images.com/Yp3TG2cLcY-AfBJogTiGHg__imagepagezoom/img/eMZ4sIPNJZT_AYpyR-PY4L-OXyg=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic85905.jpg", product_id: 5 },
  { url: "https://m.media-amazon.com/images/I/81LxR3JDGLL._AC_SL1500_.jpg", product_id: 7 },
  { url: "https://m.media-amazon.com/images/I/81LxR3JDGLL._AC_SL1500_.jpg", product_id: 7 },
  { url: "https://m.media-amazon.com/images/I/81LxR3JDGLL._AC_SL1500_.jpg", product_id: 7 },
  { url: "https://cf.geekdo-images.com/okM0dq_bEXnbyQTOvHfwRA__imagepagezoom/img/Uot8PDJpJKZ7asDoB9Pw3zb3jnc=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic6544250.png", product_id: 13 },
  { url: "https://cf.geekdo-images.com/Ndctxvd7kBXYubeYRKRqzw__imagepagezoom/img/9jpZHAjtT65vTTuMh8Zk37Cn1Ms=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic4258616.jpg", product_id: 8 },
  { url: "https://cf.geekdo-images.com/Ndctxvd7kBXYubeYRKRqzw__imagepagezoom/img/9jpZHAjtT65vTTuMh8Zk37Cn1Ms=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic4258616.jpg", product_id: 8 },
  { url: "https://cf.geekdo-images.com/Ndctxvd7kBXYubeYRKRqzw__imagepagezoom/img/9jpZHAjtT65vTTuMh8Zk37Cn1Ms=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic4258616.jpg", product_id: 8 },
  { url: "https://cf.geekdo-images.com/s9oGMCo1fcfV4Dk3EnqLZw__imagepagezoom/img/0ud6d1m1P8vnNEA3_SRditMKinw=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3146943.png", product_id: 10 },
  { url: "https://cf.geekdo-images.com/s9oGMCo1fcfV4Dk3EnqLZw__imagepagezoom/img/0ud6d1m1P8vnNEA3_SRditMKinw=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3146943.png", product_id: 10 },
  { url: "https://cf.geekdo-images.com/s9oGMCo1fcfV4Dk3EnqLZw__imagepagezoom/img/0ud6d1m1P8vnNEA3_SRditMKinw=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3146943.png", product_id: 10 },
  { url: "https://cf.geekdo-images.com/Noz8-u1ba828WUv69pTXKg__imagepagezoom/img/Kmsf9umItVBi8_SkBF0fAIaMRGQ=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3613444.jpg", product_id: 12 },
  { url: "https://cf.geekdo-images.com/Noz8-u1ba828WUv69pTXKg__imagepagezoom/img/Kmsf9umItVBi8_SkBF0fAIaMRGQ=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3613444.jpg", product_id: 12 },
  { url: "https://cf.geekdo-images.com/Noz8-u1ba828WUv69pTXKg__imagepagezoom/img/Kmsf9umItVBi8_SkBF0fAIaMRGQ=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3613444.jpg", product_id: 12 },
  { url: "https://cf.geekdo-images.com/0_KEDk4lCvryf1Ju3YQJxA__imagepagezoom/img/H3oVFcAVrMkUkvBXWbhI_P899wU=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3339551.jpg", product_id: 11 },
  { url: "https://cf.geekdo-images.com/0_KEDk4lCvryf1Ju3YQJxA__imagepagezoom/img/H3oVFcAVrMkUkvBXWbhI_P899wU=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3339551.jpg", product_id: 11 },
  { url: "https://cf.geekdo-images.com/0_KEDk4lCvryf1Ju3YQJxA__imagepagezoom/img/H3oVFcAVrMkUkvBXWbhI_P899wU=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic3339551.jpg", product_id: 11 },
  { url: "https://cf.geekdo-images.com/5rRSTD9375tnwNUfJOBRRg__imagepagezoom/img/xAMzyrs0ojN31fkYJNtfwX54EWc=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic178092.jpg", product_id: 13 },
  { url: "https://cf.geekdo-images.com/9E3n5SxxXKiUdRUw03EVvQ__imagepagezoom/img/yajKFnkvpChWSuU3upUkJEowufI=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic166867.jpg", product_id: 13 },
])
CategoryProduct.create!([
  { product_id: 1, category_id: 2 },
  { product_id: 1, category_id: 5 },
  { product_id: 5, category_id: 2 },
  { product_id: 5, category_id: 3 },
  { product_id: 5, category_id: 5 },
  { product_id: 7, category_id: 4 },
  { product_id: 7, category_id: 5 },
])
Category.create!([
  { name: "cards" },
  { name: "tiles" },
  { name: "economic" },
  { name: "dexterity" },
  { name: "abstract" },
])
CartedProduct.create!([
  { user_id: 1, product_id: 1, quantity: 2, status: "carted", order_id: nil },
  { user_id: 1, product_id: 2, quantity: 3, status: "carted", order_id: nil },
  { user_id: 1, product_id: 3, quantity: 3, status: "carted", order_id: nil },
])
