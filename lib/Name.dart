class Name {
  String firstName;
  String lastName;

  Name(this.firstName, this.lastName);
  String getFirstName() => firstName;
  String getLastName() => lastName;
  void setFirstName(firstName) {
    this.firstName = firstName;
  }
  void setLastName(lastName) {
    this.lastName = lastName;
  }
}
