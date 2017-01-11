import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
	component GroundInterfaceComponent {
		provides ground_interface {
			encoded_ground_command_t as ground_interface.encoded_ground_command
			ground_command_t as ground_interface.gound_command_sender
		}
		
		requires 64 MB memory
	}
}