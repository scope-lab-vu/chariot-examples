import edu.vanderbilt.isis.chariot.smartparkingbasic2.*
package edu.vanderbilt.isis.chariot.smartparkingbasic2 {
	component ParkingManager2{
 		provides parking_manager2{
 			parking_request_t as parking_manager2.parking_request2
 			parking_response_t as parking_manager2.parking_response2
 			occupancy_status_t as parking_manager2.occupancy_status2
 		}
 		
 		requires 256 MB memory
 		
 		startScript "sh ParkingManager.sh"
 	}
}