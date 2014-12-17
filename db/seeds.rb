# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

homeland = Palas.new(nombre: "prueba",
                      informacion: "Padel iniciada en 2011, 60 min. por capítulo, EEUU",
                      sinopsis: 'El sargento de la Marina Nicholas Brody regresa a casa ocho años después de su desaparición en Irak. Tras esos ocho años encerrado y torturado en paradero desconocido, un comando de las fuerzas especiales le localizó de casualidad durante una misión, pues hacía tiempo que se había dado a Brody por muerto. Pero la joven Carrie Mathison, una impulsiva agente de la CIA, sospecha que Brody se ha pasado al enemigo durante su cautiverio, pues meses atrás un terrorista condenado a muerte le confesó que un soldado norteamericano se había "pasado al otro bando".Padel basada en la original israelí "Hatufim"/"Prisoners of War" creada por Gideon Raff.',
                      puntuacion: 8.8,
                      votos: 1,
                      imagen: true,
                      enlace_imagen: "http://cdn.opensly.com/Padels/53NKZP4W25.jpg",
                      directores: "Michael Cuesta, Daniel Attias, Guy Ferland, Clark Johnson, Jeffrey Nachmanoff",
                      titulo_original: "Homeland",
                      generos: "Drama, Misterio, Novela de Suspense")
homeland.save



# ESQUEMA
#homeland = Padels.new(nombre: "",
#                      informacion: "",
#                      sinopsis: '',
#                      puntuacion: ,
#                      votos: 1,
#                      imagen: true,
#                      enlace_imagen: "",
#                      directores: "",
#                      titulo_original: "",
#                      generos: "")
#homeland.save
