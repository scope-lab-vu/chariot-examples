package edu.vanderbilt.isis.chariot.smartparkingbasic2 {
	functionality parking_client2 {
		input parking_response2
		output parking_request2
	}
	
	functionality parking_manager2 {
		input parking_request2, occupancy_status2
		output parking_response2
	}
	
	functionality occupancy_sensor2 {
		output occupancy_status2
	}
	
	composition request_handling2 {
		parking_client2.parking_request2 to parking_manager2.parking_request2
		parking_manager2.parking_response2 to parking_client2.parking_response2
	}
	
	composition occupancy_checking2 {
		occupancy_sensor2.occupancy_status2 to parking_manager2.occupancy_status2
	}
}