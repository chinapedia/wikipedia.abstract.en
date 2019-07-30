MIDI TIME CODE (MTC) embeds the same timing information as standard SMPTE timecode as a series of small 'quarter-frame' MIDI messages. There is no provision for the user bits in the standard MIDI time code messages, and SysEx messages are used to carry this information instead. The quarter-frame messages are transmitted in a sequence of eight messages, thus a complete timecode value is specified every two frames. If the MIDI data stream is running close to capacity, the MTC data may arrive a little behind schedule which has the effect of introducing a small amount of jitter. In order to avoid this it is ideal to use a completely separate MIDI port for MTC data. Larger full-frame messages, which encapsulate a frame worth of timecode in a single message, are used to locate to a time while timecode is not running.