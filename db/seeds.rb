clothing      = Category.create!(name: 'Clothing')
accessories   = Category.create!(name: 'Accessories')
miscellaneous = Category.create!(name: 'Miscellaneous')

hat         = Product.create!(name: 'Hat', price: 9.99, image_url:'/images/products/hat.jpg', categories:[clothing, accessories])
hoodie      = Product.create!(name: 'Hoodie', price: 39.99, image_url:'/images/products/hoodie.jpg', categories: [clothing])
iphone_case = Product.create!(name: 'Iphone Case', price: 14.99, image_url:'/images/products/iphone_case.jpg', categories: [accessories])
journal     = Product.create!(name: 'Journal', price: 4.99, image_url:'/images/products/journal.jpg', categories: [miscellaneous])
shirt       = Product.create!(name: 'Shirt', price: 19.99, image_url:'/images/products/shirt.jpg', categories: [clothing])
sticker     = Product.create!(name: 'Sticker', price: 2.99, image_url:'/images/products/sticker.jpg', categories: [miscellaneous])

# me = Customer.create!(name: 'Dom', email: 'dmonaco05@hotmail.com')
# me.credit_cards.create(number: '1234567812345678', expiry: '05/15')

User.create!(email: 'dmonaco05@hotmail.com', password: 'password')
User.create!(email: 'jarvis345@gmail.com', password: 'password')
Customer.create!(name: 'Dom', email: 'dmonaco05@hotmail.com', password: '1234')