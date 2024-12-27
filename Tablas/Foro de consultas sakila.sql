#1Peliculas y cuantos actuaron en la pelicula
SELECT film.title AS Peliculas, COUNT(actor.actor_id) AS Actores FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
GROUP BY film.film_id;

#2Cuantas peliuclas llevan el mismo lenguaje
SELECT language.name AS Lenguaje, COUNT(film.film_id) AS Pelicula FROM film
INNER JOIN language ON film.language_id = language.language_id
GROUP BY language.language_id;

#3Peliculas(inventario) disponibles en cada tienda 
SELECT store.store_id AS Tienda, COUNT(inventory.inventory_id) AS Peliculas FROM inventory
INNER JOIN store ON inventory.store_id = store.store_id
GROUP BY store.store_id;

#4Categorias y Películas más populares
SELECT category.name AS Categoria, COUNT(film_category.film_id) AS Peliculas FROM film_category
INNER JOIN category ON film_category.category_id = category.category_id
GROUP BY category.category_id;

#5Ciudad y Direcciones
SELECT city.city AS Ciudad, COUNT(address.address_id) AS Cantidad_Direcciones FROM address
INNER JOIN city ON address.city_id = city.city_id
GROUP BY city.city_id;