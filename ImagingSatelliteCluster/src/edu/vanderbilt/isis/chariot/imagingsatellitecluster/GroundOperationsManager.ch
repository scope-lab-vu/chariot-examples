import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
 package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
 	component GroundOperationsManager {
 		provides ground_manager{
 			ground_command_t as ground_manager.ground_command
 		}
 		
 		startScript "sh GroundOperationsManager.sh" 
 	}
 }