
User.create(name: 'Guillermo', email: 'gdburky@uc.cl', password: 'guillermo123',  password_confirmation: 'guillermo123' , admin: true, activated: true, activated_at: Time.zone.now)

User.create(name: 'user', email: 'user@uc.cl', password: 'user123',  password_confirmation: 'user123', activated: true, activated_at: Time.zone.now)

User.create(name: 'user2', email: 'user2@uc.cl', password: 'user123',  password_confirmation: 'user123', activated: true, activated_at: Time.zone.now)

User.create(name: 'Christian Ackermann', email: 'caackermann@uc.cl', password: '783554',  password_confirmation: '783554', admin: true, activated: true, activated_at: Time.zone.now)


a1 = Articulo.create( name: 'Macbook',
                        user_id: 1,
                        precio: 60000,
                        stock: 32,
                        descripcion: 'El increíblemente delgado y liviano',
                        categoria: 'tecnologia'
                        )


a2 = Articulo.create( name: 'Falda',
                        user_id: 1,
                        precio: 2990,
                        stock: 12,
                        descripcion: 'Ultimas tendencias en faldas de mujer',
                        categoria: 'mujer'
                        )


a3 = Articulo.create(  name: 'Pantalon',
                        user_id: 1,
                        precio: 2990,
                        stock: 12,
                        descripcion: 'Ultimas tendencias en faldas de mujer',
                        categoria: 'hombre'
                        )


a4 = Articulo.create(  name: 'Chalas',
                        user_id: 1,
                        precio: 400000,
                        stock: 20,
                        descripcion: 'Ideal para mandarle el chanclaso a los hijos mal portados',
                        categoria: 'calzado'
                        )


a5 = Articulo.create(  name: 'Coyar',
                        user_id: 1,
                        precio: 1990,
                        stock: 5,
                        descripcion: 'Compra Zapatos de Mujer Online',
                        categoria: 'accesorios'
                        )


a6 = Articulo.create(  name: 'Lanza',
                        user_id: 1,
                        precio: 200990,
                        stock: 1,
                        descripcion: 'Ideal para cazar rinocerontes gigantes mientras se disfruta en familia',
                        categoria: 'outdoor'
                        )






art1 = a1.id
art2 = a2.id
art3 = a3.id
art4 = a4.id
art5 = a5.id
art6 = a6.id



Cart.create(cantidad: 4, articulo_id: art1, user_id: 2)
Cart.create(cantidad: 3, articulo_id: art2, user_id: 3)
Cart.create(cantidad: 2, articulo_id: art3, user_id: 2)
Cart.create(cantidad: 1, articulo_id: art4, user_id: 3)
Cart.create(cantidad: 4, articulo_id: art5, user_id: 2)
Cart.create(cantidad: 3, articulo_id: art6, user_id: 3)

Comentario.create(user_id: 2, articulo_id: art1,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')
Comentario.create(user_id: 3, articulo_id: art1,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')

Comentario.create(user_id: 2, articulo_id: art2,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')

Comentario.create(user_id: 3, articulo_id: art2,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')

Comentario.create(user_id: 2, articulo_id: art3,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')

Comentario.create(user_id: 3, articulo_id: art3,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')

Comentario.create(user_id: 2, articulo_id: art4,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')

Comentario.create(user_id: 3, articulo_id: art4,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')

Comentario.create(user_id: 2, articulo_id: art5,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')

Comentario.create(user_id: 3, articulo_id: art5,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')

Comentario.create(user_id: 2, articulo_id: art6,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')

Comentario.create(user_id: 3, articulo_id: art6,
                            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim fermentum nulla hendrerit mollis')
