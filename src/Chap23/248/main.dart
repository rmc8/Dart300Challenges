import 'dart:convert';

void main() {
  var jsonStr = """{
  "forecast": {
    "Tokyo": {
      "location": {
        "latitude": 35.6895,
        "longitude": 139.6917
      },
      "days": [
        {
          "date": "2024-09-21",
          "weather": "Cloudy",
          "temperature": {
            "max": 28,
            "min": 22
          },
          "humidity": 65,
          "wind": {
            "speed": 5.2,
            "direction": "NE"
          }
        },
        {
          "date": "2024-09-22",
          "weather": "Sunny",
          "temperature": {
            "max": 30,
            "min": 23
          },
          "humidity": 60,
          "wind": {
            "speed": 4.8,
            "direction": "SE"
          }
        }
      ]
    },
    "Osaka": {
      "location": {
        "latitude": 34.6937,
        "longitude": 135.5023
      },
      "days": [
        {
          "date": "2024-09-21",
          "weather": "Rainy",
          "temperature": {
            "max": 26,
            "min": 21
          },
          "humidity": 75,
          "wind": {
            "speed": 6.1,
            "direction": "SW"
          }
        },
        {
          "date": "2024-09-22",
          "weather": "Partly Cloudy",
          "temperature": {
            "max": 29,
            "min": 22
          },
          "humidity": 68,
          "wind": {
            "speed": 5.5,
            "direction": "W"
          }
        }
      ]
    }
  }
}""";
  var data = jsonDecode(jsonStr);
  print(data["forecast"]["Tokyo"]);
}
