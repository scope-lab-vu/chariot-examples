import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
	component SatelliteBusComponent {
		provides satellite_bus {
			sat_state_request_t as satellite_bus.sat_state_request
			sat_state_t as satellite_bus.sat_state_response
			thruster_control_t as satellite_bus.thruster_control_receiver	
		}
	}
}