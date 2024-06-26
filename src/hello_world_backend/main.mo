// OBJETOS, LLAMADOS RECORDS EN MOTOKO
import Text "mo:base/Text";
import HashMap "mo:base/HashMap";

actor {
    // TIPOS, NO SON INTERFACES NI CONSTRUCTORES. PARA MANTENER CONSISTENCIA
    type Person = {
        name: Text;
        age: Nat;
    };

    // RECORD
    let vicente: Person = {
        name = "Vicente";
        age = 22;
    };

    let cocker: Person = {
        name = "Cocker";
        age = 54;
    };


    let persons = HashMap.HashMap<Text, Person>(5, Text.equal, Text.hash); //El 5 es la memoria a posicionar, se puede hasta tener 256
    persons.put("cocker",cocker);
    persons.put("vicente",vicente);

    public query func getPerson(name: Text): async ?Person {
        return persons.get(name);
    };

    public func setPerson(index: Text, name: Text, age: Nat): async () {
        let newPerson: Person = {
            name = name;
            age = age;
        };

        persons.put(index, newPerson)
    };
}