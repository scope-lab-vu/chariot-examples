import edu.vanderbilt.isis.chariot.smartparkingbasic2.*
package edu.vanderbilt.isis.chariot.smartparkingbasic2 {
	
	component OccupancySensor2 {
 		provides occupancy_sensor2{
 			occupancy_status_t as occupancy_sensor2.occupancy_status2
 		}
 		
 		requires 128 MB memory
 		requires EdgeNode.Edison.ultrasonic_ranger device
 		
 		startScript "sh OccupancySensor.sh"
 	}
}