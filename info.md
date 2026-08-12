## How it works

This project implements a 4-bit R-2R digital-to-analog converter (DAC) in the SKY130 process. The design is intended to demonstrate digital-to-analog conversion and can be used to reproduce low-resolution audio.

The four digital inputs `ui_in[3:0]` represent a 4-bit binary value from 0 to 15. `ui_in[0]` is the least significant bit (LSB), and `ui_in[3]` is the most significant bit (MSB).

Each input controls a transmission-gate switching stage. An inverter generates the complementary control signal required by the transmission gate. The switches connect the corresponding branches of the R-2R resistor ladder between the 3.3 V reference supply and ground.

The R-2R ladder weights the four bits according to their binary significance and combines them into a single analog voltage on `ua[0]`.

For a static digital input, `ua[0]` produces the corresponding analog voltage. Increasing the input code from `0000` to `1111` produces a staircase of 16 possible output levels.

The DAC uses the 3.3 V analog supply (`VAPWR`) as its voltage reference.

### Playing audio

The DAC can also be used to reproduce low-resolution digital audio. To do this, an external digital source must continuously send 4-bit audio samples to `ui_in[3:0]`.

An audio file must first be sampled and quantized into values from 0 to 15. These samples are then applied sequentially to the four DAC inputs at a constant sample rate.

For example, each 4-bit sample is mapped as:

- bit 0 -> `ui_in[0]`
- bit 1 -> `ui_in[1]`
- bit 2 -> `ui_in[2]`
- bit 3 -> `ui_in[3]`

As the digital samples change, the voltage on `ua[0]` follows the waveform represented by the audio data.

Because this is a 4-bit DAC, the audio waveform has only 16 possible voltage levels. The resulting audio will therefore have significant quantization compared with higher-resolution audio DACs, but recognizable audio can still be reproduced with an appropriate sample stream.

## How to test

### Static DAC test

Apply a 4-bit binary value to `ui_in[3:0]` and measure the voltage at `ua[0]` with an oscilloscope or voltmeter.

Begin with:

`ui_in[3:0] = 0000`

The output should be near 0 V.

Increment the input through all 16 codes:

`0000`, `0001`, `0010`, ... , `1111`

The voltage at `ua[0]` should increase in approximately equal steps.

For an ideal 4-bit DAC using a 3.3 V reference, the maximum output for input code `1111` is approximately 3.09 V.

### Audio test

To test the DAC with audio:

1. Convert an audio file into a stream of 4-bit samples with values from 0 to 15.
2. Send each sample to `ui_in[3:0]` at a constant sample rate.
3. Observe `ua[0]` with an oscilloscope to verify that the DAC reconstructs the audio waveform.
4. For listening, route the analog output through appropriate external analog circuitry to an amplified audio input.

The sample rate determines how quickly new 4-bit values must be presented to the DAC. For example, at a sample rate of 8 kHz, a new 4-bit sample is applied every 125 microseconds.

The Tiny Tapeout `clk` input is not used to clock the audio samples internally. The external source is responsible for changing `ui_in[3:0]` at the desired sample rate.

## External hardware

For basic DAC testing, an oscilloscope or voltmeter can be connected to `ua[0]`.

For audio playback, an external device capable of supplying the 4-bit sample stream is required. The analog output should be connected to an external audio amplifier before driving headphones or a speaker.

The amplifier is kept external because a speaker-driving amplifier requires additional output circuitry, chip area, and power-handling capability. This design focuses the available Tiny Tapeout area on the R-2R DAC itself, with `ua[0]` providing the analog signal for external amplification.
