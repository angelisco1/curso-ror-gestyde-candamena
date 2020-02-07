console.log('Hola mundo!')

const btn = document.getElementById('btn');
btn.addEventListener('click', () => {
  if (confirm('Estas seguro?')) {
    // AJAX AQUI

    fetch('http://localhost:3000/ingredientes', {method: 'POST', body: {
      nombre: '',
      categoria_id: 2
    }})
  }
})