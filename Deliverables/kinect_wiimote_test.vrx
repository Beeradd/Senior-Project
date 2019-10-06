<?xml version="1.0" encoding="UTF-8"?>
<MiddleVR>
	<Kernel LogLevel="2" LogInSimulationFolder="0" EnableCrashHandler="0" Version="1.7.0.7" />
	<DeviceManager>
		<Driver Type="vrDriverDirectInput" />
		<Driver Type="vrDriverKinect" />
		<Driver Type="vrDriverVRPN">
			<Axis Address="WiiMote0@localhost" ChannelIndex="0" ChannelsNb="16" Name="WiiMote" />
			<Buttons Address="WiiMote0@localhost" ChannelIndex="0" ChannelsNb="4" Name="VRPNButtons1" />
		</Driver>
		<Wand Name="WiiMote_Forward/Backward/Turns" Driver="0" Axis="WiiMote.Axis" HorizontalAxis="2" HorizontalAxisScale="2" VerticalAxis="3" VerticalAxisScale="5" AxisDeadZone="0.3" Buttons="VRPNButtons1.Buttons" Button0="3" Button1="1" Button2="2" Button3="0" Button4="4" Button5="5" />
	</DeviceManager>
	<DisplayManager Fullscreen="0" AlwaysOnTop="1" WindowBorders="0" ShowMouseCursor="0" VSync="0" GraphicsRenderer="2" AntiAliasing="0" ForceHideTaskbar="0" SaveRenderTarget="0" ChangeWorldScale="0" WorldScale="1">
		<Node3D Name="VRSystemCenterNode" Tag="VRSystemCenter" Parent="None" Tracker="Kinect0.User0.Head" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,-0.000001,1.000000" UseTrackerX="0" UseTrackerY="0" UseTrackerZ="0" UseTrackerYaw="1" UseTrackerPitch="0" UseTrackerRoll="0" />
		<Screen Name="S_Center" Parent="VRSystemCenterNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,2.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" Width="2" Height="1" />
		<Screen Name="S_Right" Parent="VRSystemCenterNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="1.000000,1.000000,0.000000" OrientationLocal="0.000000,0.000000,0.707107,0.707107" Width="2" Height="1" />
		<Screen Name="S_Left" Parent="VRSystemCenterNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="-1.000000,1.000000,0.000000" OrientationLocal="0.000000,0.000000,0.707107,0.707107" Width="2" Height="1" />
		<Node3D Name="HeadNode" Tag="Head" Parent="VRSystemCenterNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,1.000000,0.250000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
		<Camera Name="C_Left" Parent="HeadNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" VerticalFOV="60" Near="0.1" Far="1000" Screen="S_Left" ScreenDistance="1" UseViewportAspectRatio="0" AspectRatio="2" />
		<Camera Name="C_Right" Parent="HeadNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" VerticalFOV="60" Near="0.1" Far="1000" Screen="S_Right" ScreenDistance="1" UseViewportAspectRatio="0" AspectRatio="2" />
		<Camera Name="C_Center" Parent="HeadNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" VerticalFOV="60" Near="0.1" Far="1000" Screen="S_Center" ScreenDistance="1" UseViewportAspectRatio="0" AspectRatio="2" />
		<Node3D Name="HandNode" Tag="Hand" Parent="VRSystemCenterNode" Tracker="Kinect0.User0.Right_Hand" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" UseTrackerX="0" UseTrackerY="1" UseTrackerZ="0" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Viewport Name="V_Center" Left="0" Top="0" Width="1280" Height="1024" Camera="C_Center" Stereo="0" StereoMode="3" CompressSideBySide="0" StereoInvertEyes="0" OculusRiftWarping="0" OffScreen="0" UseHomography="0" />
		<Viewport Name="V_Left" Left="0" Top="0" Width="1280" Height="1024" Camera="C_Left" Stereo="0" StereoMode="3" CompressSideBySide="0" StereoInvertEyes="0" OculusRiftWarping="0" OffScreen="0" UseHomography="0" />
		<Viewport Name="V_Right" Left="0" Top="0" Width="1280" Height="1024" Camera="C_Right" Stereo="0" StereoMode="3" CompressSideBySide="0" StereoInvertEyes="0" OculusRiftWarping="0" OffScreen="0" UseHomography="0" />
	</DisplayManager>
	<ClusterManager NVidiaSwapLock="0" DisableVSyncOnServer="0" ForceOpenGLConversion="0" BigBarrier="0" SimulateClusterLag="0" MultiGPUEnabled="0" ImageDistributionMaxPacketSize="8000" ClientConnectionTimeout="60">
		<ClusterServer Address="10.100.192.92" Viewports="V_Center" />
		<ClusterClient Address="10.100.192.91" ClusterID="Left" Viewports="V_Left" />
		<ClusterClient Address="10.100.192.93" ClusterID="Right" Viewports="V_Right" />
	</ClusterManager>
</MiddleVR>
