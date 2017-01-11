import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
	/*
	 * Receiving command from ground station and send to TrajectoryPlanner
	 */
	functionality ground_interface {
		input encoded_ground_command
		output gound_command_sender
	}
	
	functionality ground_manager{
		output ground_command
	}

	/*
 	 * Provide critical satellite information such as satellite state and 
     * receive thruster control commands
 	 */
	functionality satellite_bus {
		input sat_state_request, thruster_control_receiver
		output sat_state_response
	}
	
	/*
	 * Receives satellite state from SatelliteBus and sends it to TrajectoryPlanner.
	 * It also receives target orbit from TrajectoryPlanner, using which it computes 
	 * thruster commands to send to SatelliteBus
	 */
	functionality orbit_controller {
		input target_orbit_receiver, sat_state_response
		output sat_state_sender, sat_state_request, thruster_control_sender
	}
	
	/*
	 * Receives satellite state from OrbitController as well as ground command from
	 * GroundInterface. Sends new target orbit to OrbitController
	 */
	functionality trajectory_planner {
		input sat_state_receiver, ground_command_receiver
		output target_orbit_sender
	}
	
	/*
	 * Captures low resolution images and sends them to ImageProcessor
	 */
	functionality low_resolution_image_capture {
		output low_resolution_image_sender
	}
	
	/*
	 * Captures high resolution images and sends them to ImageProcess 
	 */
	functionality high_resolution_image_capture {
		output high_resolution_image_sender
	}
	
	/*
	 * Receives high as well as low resolution images and processes them
	 */
	functionality image_processor {
		input low_resolution_image_receiver, high_resolution_image_receiver
	}

	composition cluster_flight_planning {
		ground_manager.ground_command to ground_interface.encoded_ground_command
		orbit_controller.sat_state_sender to trajectory_planner.sat_state_receiver
		ground_interface.gound_command_sender to trajectory_planner.ground_command_receiver
		trajectory_planner.target_orbit_sender to orbit_controller.target_orbit_receiver
	}

	composition satellite_flight {
		orbit_controller.sat_state_request to satellite_bus.sat_state_request
		satellite_bus.sat_state_response to orbit_controller.sat_state_response
		orbit_controller.thruster_control_sender to satellite_bus.thruster_control_receiver
	}

	composition imaging {
		low_resolution_image_capture.low_resolution_image_sender to image_processor.low_resolution_image_receiver
		high_resolution_image_capture.high_resolution_image_sender to image_processor.high_resolution_image_receiver
	}
}