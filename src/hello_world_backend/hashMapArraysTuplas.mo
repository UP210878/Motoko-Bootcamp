//ARRAYS Y TUPLAS

import Array "mo:base/Array"; //import [NOMBRE] "[mo:base para librerias internas de motoko]"
import HashMap "mo:base/HashMap";
import Text "mo:base/Text";
actor {

    let name : Text = "Vicente";
    //Valores optional se hacen poniendo ? antes del tipo por ejemplo ?Text puede ser que un valor sea Texto o nulo
    // Ejemplo optional
    let age : ?Nat = ?10;

    //ARRAYS
    let myArray: [Nat] = [10,20,30]; // 0,1,2
    let arrayElement = myArray[0];

    let emptyArray = Array.init<Nat>(4,2); // Primer valor es el tamaño del array, segundo valor es el valor init

    //TUPLAS
    let myTuple: (Nat, Text) = (1,"Motoko");

    let motoko : Text = myTuple.1; // Se accede a las tuplas con los puntos

    //HASHMAPS // Estructura que guarda valores claves, como un map de Java, trabaja como si fueran clases
    let map = HashMap.HashMap<Text, Nat>(5, Text.equal, Text.hash); // Hashmap<Identificador, Valor>
    let mapSize = map.size();
    map.put("Vicente",22);
    map.put("John",25);

    let john: ?Nat = map.get("John"); // Regresa el valor 25, por que pusimos a "John" con valor 25

};