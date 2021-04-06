//? RIGHT

abstract class Hero {
  void regularAttack();
}

//! -----------------------------------
// membuat class implements
abstract class IMagicCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IStealer {
  void stealMoney();
}

//! -----------------------------------

class Thief extends Hero implements IStealer {
  @override
  void regularAttack() {
    // ...
  }

  @override
  void stealMoney() {
    // ...
  }
}

//! -----------------------------------

class WhiteMagic extends Hero implements IHealer, IMagicCaster {
  @override
  void regularAttack() {
    // do nothing
  }

  @override
  void heal() {
    // ...
  }

  @override
  void castMagic() {
    // ...
  }
}

//! -----------------------------------

class BlackMagic extends Hero implements IMagicCaster {
  @override
  void regularAttack() {
    // do nothing
  }

  @override
  void castMagic() {
    // ...
  }
}
