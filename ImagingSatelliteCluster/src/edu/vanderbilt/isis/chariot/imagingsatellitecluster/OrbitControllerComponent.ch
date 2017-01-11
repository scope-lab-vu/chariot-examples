import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
	component OrbitControllerComponent {
		provides orbit_controller {
			sat_state_request_t as orbit_controller.sat_state_request
			sat_state_t as orbit_controller.sat_state_response
			sat_state_t as orbit_controller.sat_state_sender
			target_orbit_t as orbit_controller.target_orbit_receiver
			thruster_control_t as orbit_controller.thruster_control_sender
		}
		
		requires 64 MB memory
	}
}