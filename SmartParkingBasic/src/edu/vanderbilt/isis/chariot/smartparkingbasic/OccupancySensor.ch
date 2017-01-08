import edu.vanderbilt.isis.chariot.smartparkingbasic.*
package edu.vanderbilt.isis.chariot.smartparkingbasic {
	
	component OccupancySensor {
 		provides occupancy_sensor{
 			occupancy_status_t as occupancy_sensor.occupancy_status
 		}
 		
 		requires 128 MB memory
 		requires EdgeNode.Edison.ultrasonic_ranger device
 		
 		startScript "sh OccupancySensor.sh"
 	}
}