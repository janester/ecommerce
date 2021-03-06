User.delete_all
Product.delete_all
Tag.delete_all

u1 = User.create(email:'rlee1121@gmail.com', password: '1234', password_confirmation: '1234', is_admin: true)
u2 = User.create(email:'janesternbach@gmail.com', password: 'abc', password_confirmation: 'abc', is_admin: true)
u3 = User.create(email:'rlee1121+1@gmail.com', password: '1234', password_confirmation:'1234')
u4 = User.create(email:'janesternbach+1@gmail.com', password: 'abc', password_confirmation: 'abc')

p1 = Product.create(name:'iPod', description:'Greatest mp3 player ever', cost:'100.0', address: 'New York, NY', remote_image_url:'http://store.storeimages.cdn-apple.com/3276/as-images.apple.com/is/image/AppleInc/2012-ipodtouch-dept-hero?wid=390&hei=362&fmt=png-alpha&qlt=95&.v=1350177603222')
p2 = Product.create(name:'iPhone5', description:'Greatest phone ever', cost:'200.0', address: 'Cupertino, CA', remote_image_url:"http://blogs-images.forbes.com/jasonevangelho/files/2013/01/iphone5.jpeg")
p3 = Product.create(name:'Microsoft Surface', description:'Microsoft tablet', cost:'300.0',address: 'Redmond, WA', remote_image_url: 'http://cdn.pocket-lint.com/images/GvRW/microsoft-surface-pro-windows-8-tbalet-0.jpg?20120619-174252')
p4 = Product.create(name:'Amazon Kindle', description:'Amazon e-reader', cost:'150.0',address: 'Cleveland, OH', remote_image_url: 'http://g-ecx.images-amazon.com/images/G/01/kindle/miranda/photos/miranda-main-hero._V189854680_.jpg')
p5 = Product.create(name:'Xbox360', description:'Video game console', cost:'250.0', address: 'Dallas, TX', remote_image_url:'http://compass.xboxlive.com/assets/11/04/1104c432-c6df-49b1-867f-d0233cf44353.png?n=hero-305X333V2.png')

t1 = Tag.create(name:'video games')
t2 = Tag.create(name:'e-reader')
t3 = Tag.create(name:'books')
t4 = Tag.create(name:'music')
t5 = Tag.create(name:'phone')
t6 = Tag.create(name:'tablet')
t7 = Tag.create(name:'Microsoft')
t8 = Tag.create(name:'Apple')
t9 = Tag.create(name:'Amazon')
t10 = Tag.create(name: 'Xbox')

p1.tags = [t4, t8]
p2.tags = [t5, t4, t8]
p3.tags = [t7, t6, t4, t2, t1]
p4.tags = [t9, t2, t3]
p5.tags = [t1, t7, t10]