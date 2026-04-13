for $autor in distinct-values(doc("biblioteca.xml")//autor)
let $cantidad := count(doc("biblioteca.xml")//libro[autor = $autor])
where $cantidad > 1
return
  <resultado>{$autor} - Total: {$cantidad} Libros</resultado>