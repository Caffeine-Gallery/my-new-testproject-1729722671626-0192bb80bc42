import Result "mo:base/Result";
import Text "mo:base/Text";

import Float "mo:base/Float";
import Error "mo:base/Error";

actor Calculator {
  public func add(x : Float, y : Float) : async Float {
    x + y
  };

  public func subtract(x : Float, y : Float) : async Float {
    x - y
  };

  public func multiply(x : Float, y : Float) : async Float {
    x * y
  };

  public func divide(x : Float, y : Float) : async Result.Result<Float, Text> {
    if (y == 0) {
      #err("Division by zero")
    } else {
      #ok(x / y)
    }
  };
}
