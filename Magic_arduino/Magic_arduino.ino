void setup() {
  Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  int x = analogRead(A0);
  int y = analogRead(A1);

  Serial.print(x);
  Serial.print(",");
  Serial.print(y);
  Serial.println();
  delay(10);
}
