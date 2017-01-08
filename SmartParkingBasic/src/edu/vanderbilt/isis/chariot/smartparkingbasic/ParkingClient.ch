import edu.vanderbilt.isis.chariot.smartparkingbasic.*
package edu.vanderbilt.isis.chariot.smartparkingbasic {
	component ParkingClient{
		provides parking_client{
			parking_response_t as parking_client.parking_response
			parking_request_t as parking_client.parking_request
		}
		
 		requires 64 MB memory
 		
 		startScript "sh ParkingClient.sh"
 	}
}