for $libro in//libro
where $libro/@categoria = "programacion" 
  and number($libro/precio)>30
order by $libro/titulo descending
return 
  <resultado>
    Título: {$libro/titulo/text()} - Precio: {number($libro/precio)}€
  </resultado>