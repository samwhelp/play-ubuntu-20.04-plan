

	<!-- For Left Hand //-->
	<keybind key="W-a">
		<action name="PreviousWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>

	<keybind key="W-s">
		<action name="NextWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>


	<!-- For Right Hand //-->
	<!--
 k
h l
 j
	//-->
	<keybind key="W-k">
		<action name="PreviousWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>

	<keybind key="W-j">
		<action name="NextWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>

	<keybind key="W-h">
		<action name="PreviousWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>

	<keybind key="W-l">
		<action name="NextWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>


	<!-- win+[, win+] //-->
	<keybind key="W-bracketleft">
		<action name="PreviousWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>

	<keybind key="W-bracketright">
		<action name="NextWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>


	<!-- Alt+Up, Alt+Down //-->
	<!--
	<keybind key="A-Up">
		<action name="PreviousWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>
	//-->

	<keybind key="A-Down">
		<action name="NextWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>


	<!-- Alt+Left, Alt+Right //-->
	<!--
	<keybind key="A-Left">
		<action name="PreviousWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>

	<keybind key="A-Right">
		<action name="NextWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>
	//-->


	<!-- Win + Tab //-->
	<keybind key="W-Tab">
		<action name="NextWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>
	
	<keybind key="W-S-Tab">
		<action name="PreviousWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>

	<keybind key="W-C-Tab">
		<action name="NextWindow">
			<panels>yes</panels>
			<desktop>yes</desktop>
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>	




	<!-- Default keybindings for window switching -->
	<!-- Alt + Tab //-->
	<keybind key="A-Tab">
		<action name="NextWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>

	<keybind key="A-S-Tab">
		<action name="PreviousWindow">
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>

	<keybind key="A-C-Tab">
		<action name="NextWindow">
			<panels>yes</panels>
			<desktop>yes</desktop>
			<finalactions>
				<action name="Focus"/>
				<action name="Raise"/>
				<action name="Unshade"/>
			</finalactions>
		</action>
	</keybind>


	<!-- Keybindings for window switching with the arrow keys -->
	<!--
	<keybind key="W-S-Right">
		<action name="DirectionalCycleWindows">
			<direction>right</direction>
		</action>
	</keybind>

	<keybind key="W-S-Left">
		<action name="DirectionalCycleWindows">
			<direction>left</direction>
		</action>
	</keybind>

	<keybind key="W-S-Up">
		<action name="DirectionalCycleWindows">
			<direction>up</direction>
		</action>
	</keybind>

	<keybind key="W-S-Down">
		<action name="DirectionalCycleWindows">
			<direction>down</direction>
		</action>
	</keybind>
	//-->

	<!--
	<keybind key="W-Right">
		<action name="DirectionalCycleWindows">
			<direction>right</direction>
		</action>
	</keybind>

	<keybind key="W-Left">
		<action name="DirectionalCycleWindows">
			<direction>left</direction>
		</action>
	</keybind>

	<keybind key="W-Up">
		<action name="DirectionalCycleWindows">
			<direction>up</direction>
		</action>
	</keybind>

	<keybind key="W-Down">
		<action name="DirectionalCycleWindows">
			<direction>down</direction>
		</action>
	</keybind>

	//-->

<?php
/*

## Help

* http://openbox.org/wiki/Help:Actions#PreviousWindow
* http://openbox.org/wiki/Help:Actions#NextWindow

*/
?>
