class Spacecraft {
  String name;
  DateTime launchDate;

//membuat constructor
  Spacecraft(this.name, this.launchDate) {}

//membuat constructor dengan default atau null
  Spacecraft.unlaunced(String name) : this(name, null);
}
