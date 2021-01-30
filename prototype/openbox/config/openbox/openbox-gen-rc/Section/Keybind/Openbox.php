

	<!-- ## Restart //-->
	<keybind key="A-S-z">
		<action name="Execute">
			<startupnotify>
				<enabled>true</enabled>
				<name>Exit</name>
			</startupnotify>
			<command>obsession-logout</command>
		</action>
	</keybind>

<?php
/*
	<keybind key="A-S-z">
		<action name="Restart" />
	</keybind>
*/
?>


	<!-- ## Logout //-->
	<keybind key="A-S-x">
		<action name="Exit" />
	</keybind>

	<keybind key="C-A-Delete">
		<action name="Exit" />
	</keybind>


	<!-- ## Reconfigure //-->
	<keybind key="A-S-c">
		<action name="Reconfigure" />
	</keybind>


	<!-- ## Launch obconf //-->
	<keybind key="A-S-s">
		<action name="Execute">
			<startupnotify>
				<enabled>true</enabled>
				<name>Openbox Configuration Manager</name>
			</startupnotify>
			<command>obconf</command>
		</action>
	</keybind>


	<!-- ## Launch xfce4-appearance-settings //-->
	<keybind key="A-C-s">
		<action name="Execute">
			<startupnotify>
				<enabled>true</enabled>
				<name>Appearance</name>
			</startupnotify>
			<command>xfce4-appearance-settings</command>
		</action>
	</keybind>
