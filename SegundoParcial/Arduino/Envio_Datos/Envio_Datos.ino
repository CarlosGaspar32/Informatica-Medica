#define POT A0
int sensorValue = 0;  

void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(9600);
}

void loop() {
  // read the analog in value:
  //float current = micros();
  int sensorValue = analogRead(POT);
  //
  Serial.println(sensorValue);
  delay(35);
  //float time = micros() - current;
  //Serial.println(time);
}
