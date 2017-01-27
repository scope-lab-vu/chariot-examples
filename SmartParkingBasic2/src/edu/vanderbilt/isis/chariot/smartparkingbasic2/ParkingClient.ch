import edu.vanderbilt.isis.chariot.smartparkingbasic2.*
package edu.vanderbilt.isis.chariot.smartparkingbasic2 {
	component ParkingClient2{
		provides parking_client2{
			parking_response_t as parking_client2.parking_response2
			parking_request_t as parking_client2.parking_request2
		}
		
 		requires 64 MB memory
 		
 		startScript "sh ParkingClient.sh"
 	}
}