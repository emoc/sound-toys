/*
    emoc, 2010, http://emoc.org
    
*/

class Atari {


    // Distorsion modes 0-15 data 
    [
      // 0 : Distorsion 0 
      // No sound, used to output 4-bit samples by changing the volume very fast
      [ [1],    // Source Samples data
        [1],    // Modifier data
        [1] ],  // Clock mode (pixelclock = 3 * cpuclock)
      // Distorsion 1 / Buzzy Tones
      [ [0,0,1,0,1,0,0,0,0,1,1,1,0,1,1],    
        [1],    
        [1] ],
      // Distorsion 2 / Carries distorsion 1 downward into a rumble
      [ [0,0,1,0,1,0,0,0,0,1,1,1,0,1,1],    
        [0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0],    
        [1] ],
      // Distorsion 3 / Flangy wavering tones, like a UFO
      [ [0,0,1,0,1,0,0,0,0,1,1,1,0,1,1],    
        [0,0,1,0,1,1,0,0,1,1,1,1,1,0,0,0,1,1,0,1,1,1,0,1,0,1,0,0,0,0,1],    
        [1] ],
      // Distorsion 4 / Pure tone
      [ [0,1],    
        [1],    
        [1] ],
      // Distorsion 5 : same as 4
      [ [0,1],   
        [1],    
        [1] ],
      // Distorsion 6 / Between pure tone and buzzy tone
      [ [1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],    
        [1],    
        [1] ],
      // Distorsion 7 / Reedy tones, much brighter
      [ [0,0,1,0,1,1,0,0,1,1,1,1,1,0,0,0,1,1,0,1,1,1,0,1,0,1,0,0,0,0,1],    
        [1],    
        [1] ],
      // Distorsion 8 : 511 bits of white noise 
      // White noise / explosions / lightning, jet / spacecraft engine
      [ [1,1,0,0,0,0,1,1,0,1,0,0,1,1,0,1,1,0,0,1,1,0,0,1,1,1,0,0,0,1,0,0,0,1,1,1,0,0,1,0,
         0,1,1,0,0,0,1,0,0,0,0,1,0,0,1,1,0,0,1,1,0,1,1,1,1,1,0,1,0,1,0,0,1,1,0,1,1,1,0,1,
         1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,0,0,1,0,0,1,1,1,0,1,1,0,0,1,0,1,1,1,0,1,1,1,
         1,0,1,1,0,0,0,0,1,0,1,0,1,1,0,1,0,0,0,1,0,1,0,0,0,0,1,0,1,0,1,0,0,0,0,1,1,1,1,0,
         1,1,1,1,1,0,1,1,1,0,1,0,1,0,1,0,0,1,1,0,1,0,1,1,1,1,0,1,1,1,0,0,0,1,0,0,1,0,0,1,
         1,0,0,0,0,1,1,1,0,1,0,0,1,0,0,0,1,1,0,0,1,0,1,1,0,1,1,0,1,0,1,1,0,0,0,0,0,1,1,1,
         0,0,1,0,1,1,0,0,1,0,1,0,1,0,1,0,0,0,1,1,0,1,1,1,0,1,1,0,0,0,1,0,1,0,1,1,0,0,1,0,
         1,0,1,0,1,1,1,0,0,0,1,0,1,0,0,0,1,1,1,0,1,1,0,0,0,0,0,1,0,1,1,1,0,1,0,0,1,0,1,1,
         1,0,0,0,0,1,0,1,1,1,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,0,0,0,0,1,1,1,
         1,0,1,0,0,0,1,1,0,1,1,0,0,0,1,0,0,1,0,1,1,1,0,1,1,1,1,0,1,1,1,1,0,0,1,0,0,1,0,0,
         0,1,0,0,0,1,1,1,0,0,0,1,0,0,0,1,1,0,0,0,0,0,0,0,0,1,0,0,1,1,1,0,1,0,1,0,0,1,0,0,
         0,0,1,0,0,1,0,1,1,0,0,1,0,0,1,0,0,0,0,1,1,0,1,0,1,0,1,1,0,1,1,1,0,0,0,0,0,0,0,1,
         0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,0,1,1,0,1,0,0,0,1,0],    
        [1],    
        [1] ],
      // Distorsion 9 : same as 7
      [ [0,0,1,0,1,1,0,0,1,1,1,1,1,0,0,0,1,1,0,1,1,1,0,1,0,1,0,0,0,0,1],  
        [1],    
        [1] ],
      // Distorsion 10 : same as 6
      [ [1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], 
        [1],    
        [1] ],
      // Distorsion 11 : same as 0
      [ [1],       
        [1],    
        [1] ],
      // Distorsion 12 / Pure tone, goes much lower in pitch than 4 & 5
      [ [1,0],    
        [1],    
        [3] ],
      // Distorsion 13 : same as 12
      [ [1,0],       
        [1],    
        [3] ],
      // Distorsion 14 / Electronic tones, mostly lows, extends to rumble
      [ [1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],    
        [1],    
        [3] ],
      // Distorsion 15 / Electronic tones, mostly lows, extends to rumble
      [ [0,0,1,0,1,1,0,0,1,1,1,1,1,0,0,0,1,1,0,1,1,1,0,1,0,1,0,0,0,0,1],    
        [1],    
        [3] ]
    ] @=> int DMData[][][];

    //Step s => Envelope e;
    Step s => Gain g;
    1.0 => s.gain;
    1.0 => g.gain;
    
    int pitch;      // 0-31 pitch value
    int distorsion; // 0-15 distorsion mode (modifies source & modifier)
    int volume;     // 0-15
    dur durmax;
    0::samp => dur duree;
    
    1.4134615384::samp => dur tbase;    // 44100 / 31200 (TIA PAL samplerate based on pixelclock)
    //1.4026717557::samp => dur tbase;  // 44100 / 31440 (TIA NTSC samplerate based on pixelclock)
    dur t;
    tbase => t;
    
    1 => int sourceLength;
    1 => int modifierLength;

    0 => int i;    // source index (0 -> source length - 1)
    0 => int j;    // modifier index (0 -> modifier length - 1)
    0 => int timeIndex;

    float sample;
    float sampleValue;
    0 => float lastSampleValue;
    float sampleVolume;
    


    
    public void gain( float g ) {
        g => s.gain;
    }

    public void connect( UGen ugen ){
        g => ugen;
    }
    
    public void init() {

        DMData[distorsion][0].size() => sourceLength;
        DMData[distorsion][1].size() => modifierLength;
                    
        // switch between cpuclock and pixelclock (pixelclock = 3 * cpuclock)
        if (DMData[distorsion][2][0] == 3) tbase + tbase + tbase => t;
        else tbase => t;
                    
        0 => i;
        0 => j;

        (1.0 / 16) * volume => sampleVolume;
        
        0 => pitch;
        0 => distorsion;
        0 => volume;
    }

    public void off() {
        0 => volume;
    }
    
    public void set(int _p, int _d, int _v) {
        _p => pitch;
        _d => distorsion;
        _v => volume;
        (1.0 / 16) * volume => sampleVolume;
        DMData[distorsion][0].size() => sourceLength;
        DMData[distorsion][1].size() => modifierLength;
                    
        // switch between cpuclock and pixelclock (pixelclock = 3 * cpuclock)
        if (DMData[distorsion][2][0] == 3) tbase + tbase + tbase => t;
        else tbase => t;
                    
        0 => i;
        0 => j;
    }
    
    public void play(dur _durmax) {
        _durmax => durmax;
        0::samp => dur duree;
        while (t => now) {
            if (DMData[distorsion][1][j] == 1) {
                DMData[distorsion][0][i] => sampleValue;
                sampleValue => lastSampleValue;
            } else lastSampleValue => sampleValue;
                      
            sampleValue * sampleVolume => sample;
            sample => s.next;
                      
            if (timeIndex % (pitch + 1) == 0) i++;
            i % sourceLength => i;
                      
            j++;
            j % modifierLength => j;
                      
            timeIndex++;
            duree + t => duree;
            if (duree > durmax) break;
        }
        off();
    }
}











/* ************************************************************** */


Hid hi;
HidMsg msg;

Gain g => dac;
0.5 => g.gain;

Gain g1 => dac;
0.3 => g1.gain;
Atari ajoy;
ajoy.connect(g1);
ajoy.init();
float x;
float y;
float z;

// which joystick
0 => int device;

// open joystick 0, exit on fail
if( !hi.openJoystick( device ) ) me.exit();

<<< "joystick '" + hi.name() + "' ready", "" >>>;

spork~ atarinotejoy();

// infinite event loop
while( true ) {
    hi => now; // wait on HidIn as event

    // messages received
    while( hi.recv( msg ) ) {
        if( msg.isAxisMotion() ) {
            //<<< "joystick axis", msg.which, ":", msg.axisPosition >>>;
            if (msg.which == 0) msg.axisPosition => x;
            if (msg.which == 1) msg.axisPosition => y;
            if (msg.which == 2) msg.axisPosition => z;
        } else if( msg.isButtonDown() ) {
            // <<< "joystick button", msg.which, "down" >>>;
            Std.rand2(5, 30)::ms => dur randur;
            if (Std.rand2(0, 1) > 0.5) spork ~ atariup(msg.which, 8, randur, g);
            else spork ~ ataridown(msg.which, 8, randur, g);
        }
    }
}

fun void atariup(int _dis, int _vol, dur _d, UGen ugen) {
    Atari aa;
    aa.connect(ugen);
    aa.init();

    for ( 0 => int i; i < 31; i++ ) {
        aa.set(i, _dis, _vol);
        aa.play(_d);
    }
}

fun void ataridown(int _dis, int _vol, dur _d, UGen ugen) {
    Atari aa;
    aa.connect(ugen);
    aa.init();

    for ( 31 => int i; i > 0; i-- ) {
        aa.set(i, _dis, _vol);
        aa.play(_d);
    }
}

fun void atarinotejoy() {
    while (1) {
        ((x + 1) * 15) $ int => int xx;
        ((y + 1) * 7) $ int => int yy;
        ((z + 1) * 7) $ int => int zz;
        <<<"pitch " + xx + " disto " + yy + " vol " + zz>>>;
        ajoy.set(xx, yy, zz);
        ajoy.play(10::ms);
    }
}
