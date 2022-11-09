class Cliente {
  var nombre;
  var apellido;
  var telefono;

  Cliente({this.nombre, this.apellido, this.telefono});
}

List<Cliente> listadoclientes = [
  Cliente(nombre: 'Alexander', apellido: 'Vacca', telefono: '123456'),
  Cliente(nombre: 'Pedro', apellido: 'Perez', telefono: '54321'),
  Cliente(nombre: 'Maria', apellido: 'Diaz', telefono: '987654'),
  Cliente(nombre: 'Juana', apellido: 'Lopez', telefono: '5555555')
];
