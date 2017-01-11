import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
	component TrajectoryPlannerComponent {
		provides trajectory_planner {
			sat_state_t as trajectory_planner.sat_state_receiver
			ground_command_t as trajectory_planner.ground_command_receiver
			target_orbit_t as trajectory_planner.target_orbit_sender	
		}
		
		requires 256 MB memory
	}
}