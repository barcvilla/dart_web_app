void main()
{
  ObjectEquality();
  /**
  //el objeto Map es una coleccion key/value se puede construir de dos formas
  Map companies = {'airline': 'Abianca', 'city': 'Bogota'};
  Map alumnos = new Map();
  alumnos['nombre'] = 'Alberto';
  alumnos['apellidos'] = 'Perez';

  //accediento a las propiedades de un Map
  print(companies['airline']);
  print(companies['city'];
  */
}

void ObjectEquality()
{
  Map company = {'airline': 'Just In Time', 'city': 'San Francisco'};
  Map duplicate = {'airline': 'Just In Time', 'city': 'San Francisco'};
  Map expression = company; // referencia compartida.

  String answer;

  answer = identical(company, company).toString();
  print('is company identical to company: ' + answer);

  answer = identical(company, expression).toString();
  print('is company identical to expression: ' + answer);

  answer = identical(company, duplicate).toString();
  print('is company identical to duplicate: ' + answer);

  answer = (company == duplicate).toString();
  print('is company == to duplicate: ' + answer);

  answer = (company == expression).toString();
  print('is company == expression: ' + answer);

  answer = (5.0 == 5).toString();
  print('is double 5.0 == int 5: ' + answer);

  answer = (5.5 == 5).toString();
  print('is double 5.5 == int 5: ' + answer);

  answer = (5 == 5).toString();
  print('is int 5 == int 5: ' + answer);

  answer = identical(5.0, 5.0).toString();
  print('is double 5.0 identical to double 5.0: ' + answer);

  answer = identical(5.0, 5).toString();
  print('is double 5.0 identical to int 5: ' + answer);

  answer = identical(5.5, 5).toString();
  print('is double 5.5 identical to int 5: ' + answer);

  answer = identical(5,5).toString();
  print('is int 5 identical to int 5: ' + answer);

}