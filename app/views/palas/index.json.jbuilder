json.array!(@palas) do |palas|
  json.extract! palas, :nombre, :informacion, :sinopsis, :puntuacion, :votos, :imagen, :enlace_imagen, :directores, :titulo_original
  json.url palas_url(palas, format: :json)
end
