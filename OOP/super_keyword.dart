main()
{

  Dog fog = Dog("Cooper");
  fog.sound();
}


class Animal{

  String name;
  Animal(this.name);
  void sound()
  {
    print("Yss, Animal makes sound");
  }
}

//child class

class Dog extends Animal{
  Dog(String name):super(name);

  @override //it means im using parent's things.
  void sound()
  {
super.sound();
  }
}

