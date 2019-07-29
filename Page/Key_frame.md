A KEYFRAME in animation and filmmaking is a drawing that defines the starting and ending points of any smooth transition. The drawings are called as "FRAMES" because their position in time is measured in frames on a strip of film. A sequence of keyframes defines which movement the viewer will see, whereas the position of the keyframes on the film, video, or animation defines the timing of the movement. Because only two or three keyframes over the span of a second do not create the illusion of movement, the remaining frames are filled with inbetweens.


Use of keyframes as a means to change parameters

In software packages that support animation, especially 3D graphics, there are many parameters that can be changed for any one object. One example of such an object is a light (In 3D graphics, lights function similarly to real-world lights. They cause illumination, cast shadows, and create specular highlights). Lights have many parameters including light intensity, beam size, light color, and the texture cast by the light. Supposing that an animator wants the beam size to change smoothly from one value to another within a predefined period of time, that could be achieved by using keyframes. At the start of the animation, a beam size value is set. Another value is set for the end of the animation. Thus, the software program automatically interpolates the two values, creating a smooth transition.


Video editing

In non-linear digital video editing, as well as in video compositing software, a keyframe is a frame used to indicate the beginning or end of a change made to a parameter. For example, a keyframe could be set to indicate the point at which audio will have faded up or down to a certain level.


Video compression

In video compression, a keyframe, also known as an "INTRA-FRAME", is a frame in which a complete image is stored in the data stream. In video compression, only changes that occur from one frame to the next are stored in the data stream, in order to greatly reduce the amount of information that must be stored. This technique capitalizes on the fact that most video sources (such as a typical movie) have only small changes in the image from one frame to the next. Whenever a drastic change to the image occurs, such as when switching from one camera shot to another, or at a scene change,[1] a keyframe must be created. The entire image for the frame must be output when the visual difference between the two frames is so great that representing the new image incrementally from the previous frame would require more data than recreating the whole image.

Because video compression only stores incremental changes between frames (except for keyframes), it is not possible to fast forward or rewind to any arbitrary spot in the video stream. That is because the data for a given frame only represents how that frame was different from the preceding one. For that reason, it is beneficial to include keyframes at arbitrary intervals while encoding video. For example, a keyframe may be output once for each 10 seconds of video, even though the video image does not change enough visually to warrant the automatic creation of the keyframe. That would allow seeking within the video stream at a minimum of 10-second intervals. The down side is that the resulting video stream will be larger in size because many keyframes are added when they are not necessary for the frame's visual representation. This drawback, however, does not produce significant compression loss when the bitrate is already set at a high value for better quality (as in the DVD MPEG-2 format).


See also

-   Blocking (animation)
-   Morphing


References

Category:Computer graphics Category:Video Category:Animation techniques

[1] http://www.videoproductionslondon.com/blog/scene-change-detection-during-encoding-key-frame-extraction-code