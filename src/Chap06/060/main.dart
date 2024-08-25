class Light {
  bool power = false;

  void toggle() {
    power = !power;
  }

  String get_power_status() {
    return power ? "ON" : "OFF";
  }
}

void main() {
  Light light = Light();
  print(light.get_power_status());
  light.toggle();
  print(light.get_power_status());
  light.toggle();
  print(light.get_power_status());
}
