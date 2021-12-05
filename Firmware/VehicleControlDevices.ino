/*
 *  2021 Ivan Canedo Farfan
 *  BUAP MIEL
*/

String inputString = "";         // a String to hold incoming data
String outString = "";
bool Flag = false;  // whether the string is complete
const int pot1 = A0;
const int pot2 = A1;
const int pot3 = A2;
const int rev = 2;
const int HB = 3;
const int STOP = 4;
const int aux = 9;
const int steerMax = 200;
const int pedalMax = 100;
const int throtleMin = 480;
const int throtleMax = 503;
const int brakeMin = 510;
const int brakeMax = 536;
int temp = 0;

void setup() {
  // initialize serial:
  Serial.begin(115200);
  // initialize pins
  pinMode(aux,OUTPUT);
  pinMode(rev,INPUT_PULLUP);
  pinMode(HB,INPUT_PULLUP);
  pinMode(STOP,INPUT_PULLUP);
  // reserve 200 bytes for the inputString:
  inputString.reserve(200);
  //analogReference(DEFAULT);
}

void loop() {
  if (Flag) {
    digitalWrite(aux, HIGH);
    // read devices states
    int pot1Value = analogRead(pot1);
    int pot2Value = analogRead(pot2);
    int pot3Value = analogRead(pot3);
    bool buttonState1 = digitalRead(rev);
    bool buttonState2 = digitalRead(HB);
    bool buttonState3 = digitalRead(STOP);
    if (buttonState3){
      buttonState3 = 0;
    }
    else{
      buttonState3 = 1;
    }
    // format steering wheel
    temp = map(pot1Value, 0, 1023, 0, steerMax);
    String Steer = String(temp);
    // format throtle pedal
    temp = map(pot2Value, throtleMin, throtleMax, 0, pedalMax);
    temp = AngleCheck(temp);
    String Throtle = String(temp);
    // format break pedal
    temp = map(pot3Value, brakeMin, brakeMax, 0, pedalMax);
    temp = AngleCheck(temp);
    String Break = String(temp);
    // format reverse selector
    String Rev = String(buttonState1);
    // fromat hand brake selector
    String hb = String(buttonState2);
    // fromat emergency stop button
    String st = String(buttonState3);
    // create output string
    outString = String(Steer + "/" + Throtle + "/" + Break + "/" + Rev + hb + st);
    // print output string
    Serial.print(outString);
    Serial.print("\n");
    digitalWrite(aux, LOW);
    // lower flag to wait for another request
    Flag = false;
  }
}

/*
  checcks if the values is between the boundaries
  input 'y' = true for steering wheel and false for pedals
*/
int AngleCheck(int x) {
  int result;
  if (x > pedalMax) {
    result = pedalMax;
  }
  else if (x < 0) {
    result = 0;
  }
  else {
    result = x;
  }
  return result;
  }

/*
  SerialEvent occurs whenever a new data comes in the hardware serial RX. This
  routine is run between each time loop() runs, so using delay inside loop can
  delay response. Multiple bytes of data may be available.
*/
void serialEvent() {
    char inChar = (char)Serial.read();
    if (inChar == '\n') {
      Flag = true;
    }
}
