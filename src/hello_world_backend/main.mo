actor {
  //  VARIABLES No mutable con let(CONSTANTES), mutables con var(VARIABLES)
  // := para asignar iguales
  // Se puede asignar tamaños de variables como Nat8 o Nat16 para terminos de optimizacion


  let age : Nat = 0; // Los tipos siempre deben estar adentro al iniciar las variables
  var testBool : Bool = true;
  var myInt: Int = 0;
  var myFloat : Float = 0.0;
  var name: Text = "John Doe";
  //  QUERY --> Lectura -> milisegundos
  //  UPDATE --> Escritura -> 2-3 segundos
  
  //QUERY
  // public query func greet() : async Text {
  //   return "Hello World";
  // };

  //  ESTRUCTURA DE OPERACIONES
  //  public [query] func NOMBRE(PARAMETROS) : async TIPO_A_RETORNAR {
  //  return CosaARetornar;
  //  }

  // SETNAME
  public func setName( nameInput : Text) : async () {
    name := nameInput;
  };
  // GETNAME
  public query func getName() : async Text {
    return name;
  };
};

// actor {
//   public query func greet(name : Text) : async Text {
//     return "Hello, " # name # "!";
//   };
// };
