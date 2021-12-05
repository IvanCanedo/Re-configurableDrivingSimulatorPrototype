from pyb import Pin     #MicroPython library to control the GPIO
from pyb import Timer   #MicroPython library to control the Timers
from pyb import UART    #MicroPython library to control the UART

#encoder's pulses per revolution
ppr = 1056

#UART port configuration
buff_length=11      #length of the incoming reference signal
PueSer = UART(3)    #create a UART object for UART 3 that is connected to USB/UART converter
PueSer.init(115200,bits=8,parity=None,stop=1,timeout=0,rxbuf=buff_length)    #Initialize the UART port setting the buffer size and speed

#Encoder pins configurarion
pin_a = Pin('A0', Pin.AF_PP, pull=Pin.PULL_NONE, af=Pin.AF1_TIM2)   #create a pin objet without pull up or pull down and with the alternate funtion 1 for the selected timmer
pin_b = Pin('A1', Pin.AF_PP, pull=Pin.PULL_NONE, af=Pin.AF1_TIM2)

pin_c = Pin('E9', Pin.AF_PP, pull=Pin.PULL_NONE, af=Pin.AF1_TIM1)
pin_d = Pin('E11', Pin.AF_PP, pull=Pin.PULL_NONE, af=Pin.AF1_TIM1)

pin_e = Pin('D12', Pin.AF_PP, pull=Pin.PULL_NONE, af=Pin.AF2_TIM4)
pin_f = Pin('D13', Pin.AF_PP, pull=Pin.PULL_NONE, af=Pin.AF2_TIM4)

#encoder timer configuration
enc_timer1 = Timer(2, prescaler=0, period=ppr)  #creates a timer object with the number of pulses in the encoder
enc_timer2 = Timer(1, prescaler=0, period=ppr)
enc_timer3 = Timer(4, prescaler=0, period=ppr)

enc_channel1 = enc_timer1.channel(1, Timer.ENC_AB)  #creates an object of a timer chanel and set the mode to encoder AB
enc_channel2 = enc_timer2.channel(1, Timer.ENC_AB)
enc_channel3 = enc_timer3.channel(1, Timer.ENC_AB)

#Pins used to measure the system's perfomrance
debug = Pin(Pin.cpu.D10, Pin.OUT_PP)    #creates a pin object set as output
debug_1 = Pin(Pin.cpu.D11, Pin.OUT_PP)
debug_2 = Pin(Pin.cpu.D8, Pin.OUT_PP)
debug_3 = Pin(Pin.cpu.D9, Pin.OUT_PP)
debug_4 = Pin(Pin.cpu.B14, Pin.OUT_PP)
debug_5 = Pin(Pin.cpu.B15, Pin.OUT_PP)
debug.off()     #sets the pin to low
debug_1.off()
debug_2.off()
debug_3.off()
debug_4.off()
debug_5.off()

#Pins to control the direction of the motors
D1 = Pin(Pin.cpu.C4, Pin.OUT_PP)
Iz1 = Pin(Pin.cpu.C5, Pin.OUT_PP)
D1.off()
Iz1.off()

D3 = Pin(Pin.cpu.E4, Pin.OUT_PP)
Iz3 = Pin(Pin.cpu.E3, Pin.OUT_PP)
D3.off()
Iz3.off()

D2 = Pin(Pin.cpu.C1, Pin.OUT_PP)
Iz2 = Pin(Pin.cpu.C0, Pin.OUT_PP)
D2.off()
Iz2.off()

#PWM pins to control the speed of the motor
En1 = Pin('A3') #creates an uninitialized pin object
tim1 = Timer(5, freq=900)   #creates a timer object initialized to 900Hz
ch1 = tim1.channel(4, Timer.PWM, pin=En1)   #creates a timer channel object in PWM mode
ch1.pulse_width_percent(0)  #turns off the pwm pin

En3 = Pin('E6')
tim3 = Timer(9, freq=900)
ch3 = tim3.channel(2, Timer.PWM, pin=En3)
ch3.pulse_width_percent(0)

En2 = Pin('B1')
tim2 = Timer(3, freq=900)
ch2 = tim2.channel(4, Timer.PWM, pin=En2)
ch2.pulse_width_percent(0)

#ESO constants
l0=100000000
l1=6000000
l2=110000
l3=600

#initialization of variables
tik=0   #flag to control the sampling rate
clutch=0    #variable to count the first iterations of the the program
#fag=0   
Vsource = 12        #Voltage source that powers the H-Bridge
Vmax = 9            #maximum voltage level for the motors
pwm_max = 100       #maximum level for the PWM with
initial_angle = 90  #Initial position for the motors
angle_shift = 90    #angle shifting to prevent 0 crossing
send_flag = 4       #flag to control the data sending

#initialization of contorl variables
hatx11=0
hatx21=0
z11=0
z21=0
hatx1old1=0
hatx2old1=0
z1old1=0
z2old1=0
xold1=0
v1=0,0

hatx12=0
hatx22=0
z12=0
z22=0
hatx1old2=0
hatx2old2=0
z1old2=0
z2old2=0
xold2=0
v2=0,0

hatx13=0
hatx23=0
z13=0
z23=0
hatx1old3=0
hatx2old3=0
z1old3=0
z2old3=0
xold3=0
v3=0,0

#finction to map a value in a different range
def pymap(value, istart, istop, ostart, ostop):
    return ostart + (ostop - ostart) * ((value - istart) / (istop - istart))

#function that raises a flag if the samplig rate timmer creates an interruption
def f(t):
    global tik
    tik=1

#funtion that formats the motor position
def readpos(x):
    position=pymap(x, 0, ppr, 0, 360)
    return position

#CONTROL LAW
def control(x,y,hatx,z):
    #control constants
    k1 = 90
    k2 = 20
    R=5.1
    Jm=0.050
    r=48
    Ka=0.010
    #calculate the error
    e = x-y
    eabs=abs(e)
    #calculate he control law
    if eabs < 1:
        u = 0               #if the error is small the control signal is 0
    else:
        u = -k1*(e)-k2*hatx #calculate the control signal
        u = u-z             #compensate the disturbances
    v = u*((Jm*r*R)/Ka)     #convert the control signal to a voltage signal
    #check if the voltage signal is within the voltage limits
    if v > Vmax:
        v = Vmax
    elif v < -Vmax:
        v = -Vmax        
    return v,u  #return voltage and control signals

# def controlTEST(x,y,hatx,z,k1,k2):
#     #constantes control
#     # k1 = 50
#     # k2 = 20
#     R=5.1
#     Jm=0.050
#     r=48
#     Ka=0.010
#     e = x-y
#     eabs=abs(e)
#     if eabs < 1:
#         u = 0
#     else:
#         u = -k1*(e)-k2*hatx
#         u = u-z
#     v = u*((Jm*r*R)/Ka)
#     if v > Vmax:
#         v = Vmax
#     elif v < -Vmax:
#         v = -Vmax        
#     return v,u

# functions to update the motors position and speed
def updateout1(vt1,Vsource):
    # motor 1
    # depending on the voltage value is the direction of the motor
    if vt1<0:
        D1.on()         #direction is updated
        Iz1.off()
    elif vt1>0:
        D1.off()
        Iz1.on()
    else:
        D1.off()
        Iz1.off()
    # the absolute value of the voltage is converted to a PWM width
    vt1 = abs(vt1)
    vt1 = pymap(vt1,0,Vsource,0,pwm_max)
    ch1.pulse_width_percent(vt1)    #speed is updated
    
def updateout2(vt2,Vsource):
    # motor2
    if vt2<0:
        D2.on()
        Iz2.off()
    elif vt2>0:
        D2.off()
        Iz2.on()
    else:
        D2.off()
        Iz2.off()
    vt2 = abs(vt2)
    vt2 = pymap(vt2,0,Vsource,0,pwm_max)
    ch2.pulse_width_percent(vt2)
        
def updateout3(vt3,Vsource):
    # motor 3
    if vt3<0:
        D3.on()
        Iz3.off()
    elif vt3>0:
        D3.off()
        Iz3.on()
    else:
        D3.off()
        Iz3.off()
    vt3 = abs(vt3)
    vt3 = pymap(vt3,0,Vsource,0,pwm_max)
    ch3.pulse_width_percent(vt3)

# function to make the output string always 3 characters long
def format_out(x):
    x = int(x)
    if x < 100:
        if x < 10:
            x = str(x)
            x = '00'+x
        else:
            x = str(x)
            x = '0'+str(x)
    else:
        x = str(x)
    return x

# pre-calculate variables
pwm_vmax = int(pymap(Vmax,0,Vsource,0,pwm_max))         #maximun value the PWM width can get to reach the maximum motor voltage
initial_pos = int(pymap(initial_angle + angle_shift, 0, 360, 0, ppr))   #calulate the initial position to initialize the enceder timer

# samplig rate configuration
t=0.0025    #sampling rate in seconds
tim7 = Timer(7, freq=400, callback=f)   #create at imer object initialized to create a interruption callback in 400Hz

# initialize encoder's timers
enc_timer1.counter(initial_pos)
enc_timer2.counter(initial_pos)
enc_timer3.counter(initial_pos)

# Control Loop
while True:
    if tik==1:      #executes if the sampling rate timer has created an intruption
        tik=0       #lowers the interrupt flag
        debug.on()  #first aux pin set high to measure overall calculation time
        
        # Inputs
        debug_1.on()                #second aux pin set high to measure the motors position
        x1=enc_timer1.counter()     #reads motors actual position  
        x1=readpos(x1)              #formats the position
        x2=enc_timer2.counter()
        x2=readpos(x2)
        x3=enc_timer3.counter()
        x3=readpos(x3)
        debug_1.off()               #second aux pin set low to measure the motors position
        if clutch < 50:             #for the first 50 iteratiosn the reference is ecual to the measured position to alow the ESO to converge
            y1=x1
            y2=x2
            y3=x3
            clutch=clutch+1
        
        # Calculate the ESOs
        # ESO1
        debug_2.on()        #third aux pin set high to measure the ESO calculation time
        hatx11 = hatx1old1 + t*(hatx2old1+l3*(xold1-hatx1old1))     #calulate estimated position
        hatx21 = hatx2old1 + t*(v1[1]+z1old1+l2*(xold1-hatx1old1))  #calulate estimated velocity
        z11 = z1old1 + t*(z2old1+l1*(xold1-hatx1old1))              #calulate estimated disturbance
        z21 = z2old1 + t*(l0*(xold1-hatx1old1))
        hatx1old1 = hatx11      #update last position
        hatx2old1 = hatx21      #update last velocity
        if z11 > 5000:      #limit estimated disturbance to avoid control loss
            z11 = 5000
        elif z11 < -5000:
            z11 = -5000
        z1old1 = z11        #update last disturbance
        z2old1 = z21
        xold1=x1            #update last measured position
        
        # ESO2
        hatx12 = hatx1old2 + t*(hatx2old2+l3*(xold2-hatx1old2))
        hatx22 = hatx2old2 + t*(v2[1]+z1old2+l2*(xold2-hatx1old2))
        z12 = z1old2 + t*(z2old2+l1*(xold2-hatx1old2))
        z22 = z2old2 + t*(l0*(xold2-hatx1old2))
        if z12 > 5000:
            z12 = 5000
        elif z12 < -5000:
            z12 = -5000
        hatx1old2 = hatx12
        hatx2old2 = hatx22
        z1old2 = z12
        z2old2 = z22
        xold2=x2
        
        # ESO3
        hatx13 = hatx1old3 + t*(hatx2old3+l3*(xold3-hatx1old3))
        hatx23 = hatx2old3 + t*(v3[1]+z1old3+l2*(xold3-hatx1old3))
        z13 = z1old3 + t*(z2old3+l1*(xold3-hatx1old3))
        z23 = z2old3 + t*(l0*(xold3-hatx1old3))
        if z13 > 5000:
            z13 = 5000
        elif z13 < -5000:
            z13 = -5000
        hatx1old3 = hatx13
        hatx2old3 = hatx23
        z1old3 = z13
        z2old3 = z23
        xold3=x3
        debug_2.off()       #third aux pin set low to measure the ESO calculation time
        
        # control calculation
        debug_3.on()        #fourth aux pin set high to measure the control law calculation time
        v1 = control(x1,y1,hatx21,z11)  #call the control calculation function for motor 1
        v2 = control(x2,y2,hatx22,z12)
        v3 = control(x3,y3,hatx23,z13)
        debug_3.off()       #fourth aux pin set low to measure the control law calculation time
        
        # Update output
        debug_4.on()        #fifth aux pin set high to measure the output updateing time
        updateout1(v1[0],Vsource)   #call update funtion for motor 1
        updateout2(v2[0],Vsource)
        updateout3(v3[0],Vsource)
        debug_4.off()       #fifth aux pin set low to measure the output updateing time
        debug.off()         #first aux pin set low to measure overall calculation time
        
        # serial communication
        if  PueSer.any() >= buff_length:        #check if there's a full menssage in the buffer
            debug_5.on()                        #sixth aux pin set high to measure the serial income communication time
            x = PueSer.read(buff_length)        #reads the UART buffer
            try:                                #"try" comand used to avoid program failure in case of misscomunication
                data= x.decode('ascii')         #decode the incomming message to a string format
                if data == 'setcurrentp':       #check if the recieved message is the set current position comand
                    enc_timer1.counter(initial_pos)     #re-initalize encoder timer position
                    enc_timer2.counter(initial_pos)
                    enc_timer3.counter(initial_pos)
                    y1 = initial_angle + angle_shift    #update reference position to initial position
                    y2 = initial_angle + angle_shift
                    y3 = initial_angle + angle_shift
                else:                           #update reference psition win message
                    y1 = int(data[0:3])         #tranform to integer the first 3 characters
                    y1 += angle_shift           #add the angle shift to avoid zero corssing
                    y2 = int(data[4:7])
                    y2 += angle_shift
                    y3 = int(data[8:])
                    y3 += angle_shift
            except:
                pass        #do not update the reference position if any error occurs
            debug_5.off()
# END of normal program uncoment the nex section to send back motor 3 position
        #     strtemp = format_out(x3)
        #     send_flag = 0
        # else:
        #     if send_flag <= 2:
        #         PueSer.write(strtemp[send_flag].encode('ascii'))
        #         send_flag = send_flag + 1
        #         debug_5.off()
        #     debug_5.on()
        #     x3=int(x3)
        #     if x3 < 100:
        #         x3 = str(x3)
        #         x3 = '0'+x3
        #     else:
        #         x3 = str(x3)
        #     debug_5.off()
# 
# 
# while True:
#     delay(2)
#     if  PueSer.any():
#         if PueSer.any()>=buff_length:
#             debug.on()
#             x = PueSer.read(buff_length)
#     #         print(x)
#             debug.off()
#             data= x.decode('ascii')
#             debug.on()
#             data = data.split("/")
#             debug.off()
#             x1=int(data[0])
#             x2=int(data[1])
#             x3=int(data[2])
#             debug.on()
#             PueSer.write(x)
#             debug.off()


#Start of new prgram

# while True:
#     if tik==1:
#         tik=0
#         debug.on()
        
#         #inputs
#         debug_1.on()
#         x1=enc_timer1.counter()
#         x1=readpos(x1)
#         debug_1.off()
#         x2=enc_timer2.counter()
#         x2=readpos(x2)
#         debug_1.on()
#         x3=enc_timer3.counter()
#         x3=readpos(x3)
#         debug_1.off()
#         if clutch < 50:
#             y1=x1
#             y2=x2
#             y3=x3
#             clutch=clutch+1
            
#         #OEE1
#         debug_2.on()
#         hatx11 = hatx1old1 + t*(hatx2old1+l3*(xold1-hatx1old1))
#         hatx21 = hatx2old1 + t*(v1[1]+z1old1+l2*(xold1-hatx1old1))
#         z11 = z1old1 + t*(z2old1+l1*(xold1-hatx1old1))
#         z21 = z2old1 + t*(l0*(xold1-hatx1old1))
#         hatx1old1 = hatx11
#         hatx2old1 = hatx21
#         if z11 > 5000:
#             z11 = 5000
#         elif z11 < -5000:
#             z11 = -5000
#         z1old1 = z11
#         z2old1 = z21
#         xold1=x1
#         debug_2.off()
        
#         #OEE2
#         hatx12 = hatx1old2 + t*(hatx2old2+l3*(xold2-hatx1old2))
#         hatx22 = hatx2old2 + t*(v2[1]+z1old2+l2*(xold2-hatx1old2))
#         z12 = z1old2 + t*(z2old2+l1*(xold2-hatx1old2))
#         z22 = z2old2 + t*(l0*(xold2-hatx1old2))
#         if z12 > 5000:
#             z12 = 5000
#         elif z12 < -5000:
#             z12 = -5000
#         hatx1old2 = hatx12
#         hatx2old2 = hatx22
#         z1old2 = z12
#         z2old2 = z22
#         xold2=x2
        
#         #OEE3
#         debug_2.on()
#         hatx13 = hatx1old3 + t*(hatx2old3+l3*(xold3-hatx1old3))
#         hatx23 = hatx2old3 + t*(v3[1]+z1old3+l2*(xold3-hatx1old3))
#         z13 = z1old3 + t*(z2old3+l1*(xold3-hatx1old3))
#         z23 = z2old3 + t*(l0*(xold3-hatx1old3))
#         if z13 > 5000:
#             z13 = 5000
#         elif z13 < -5000:
#             z13 = -5000
#         hatx1old3 = hatx13
#         hatx2old3 = hatx23
#         z1old3 = z13
#         z2old3 = z23
#         xold3=x3
#         debug_2.off()

#         #control
#         debug_3.on()
#         v1 = controlTEST(x1,y1,hatx21,z11,k1,k2)
#         debug_3.off()
#         v2 = controlTEST(x2,y2,hatx22,z12,k1,k2)
#         debug_3.on()
#         v3 = controlTEST(x3,y3,hatx23,z13,k1,k2)
#         debug_3.off()
        
#         #actualizar salida
#         debug_4.on()
#         updateout1(v1[0],x1,Vsource)
#         debug_4.off()
#         updateout2(v2[0],x2,Vsource)
#         debug_4.on()
#         updateout3(v3[0],x3,Vsource)
#         debug_4.off()
#         debug.off()
        
#         # comunicacion serial
#         if  PueSer.any() >= buff_length:
#             debug_5.on()
#             x = PueSer.read(buff_length)
#             try:
#                 data= x.decode('ascii')
#                 # print(data)
#                 if data == 'setcurrentp':
#                     enc_timer1.counter(initial_pos)
#                     enc_timer2.counter(initial_pos)
#                     enc_timer3.counter(initial_pos)
#                     y1 = initial_angle + angle_shift
#                     y2 = initial_angle + angle_shift
#                     y3 = initial_angle + angle_shift
#                     # print('position updated')
#                 else:
#                     y1 = int(data[0:3])
#                     y1 += angle_shift
#                     k1 = int(data[4:7])
#                     k2 = int(data[8:])
#             except:
#                 #print('error de com')
#                 pass
#             debug_5.off()
#             strtemp = format_out(x1)
#             send_flag = 0
#         else:
#             if send_flag <= 2:
#                 # debug_5.on()
#                 PueSer.write(strtemp[send_flag].encode('ascii'))
#                 send_flag = send_flag + 1
#                 # debug_5.off()
#             # PueSer.write(x)
#             #debug_5.on()
#             x1=int(x1)
#             if x1 < 100:
#                 x1 = str(x1)
#                 x1 = '0'+x1
#             else:
#                 x1 = str(x1)
#             # print(x1)