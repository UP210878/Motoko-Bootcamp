import Text "mo:base/Text";
import HashMap "mo:base/HashMap";

actor {
    type Student = {
        ID : Text;
        firstName : Text;
        lastName : Text;
        age : Nat;
        isActive : Bool;
    };

    let vicente: Student = {
        ID = "Vicente";
        firstName = "Vic";
        lastName = "Val";
        age = 12;
        isActive = true;
    };

    let students = HashMap.HashMap<Text,Student>(5,Text.equal,Text.hash);

    students.put("Vicente",vicente);

    public query func getStudent(name: Text): async ?Student {
        return students.get(name);
    };
}