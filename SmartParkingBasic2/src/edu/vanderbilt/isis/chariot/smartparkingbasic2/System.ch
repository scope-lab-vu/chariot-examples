import edu.vanderbilt.isis.chariot.smartparkingbasic2.*
package edu.vanderbilt.isis.chariot.smartparkingbasic2 {
	goalDescription SmartParkingBasic2 {
		request_handling2 as objective RequestHandling2
		
		occupancy_checking2 as objective OccupancyChecking2
		
		replicate occupancy_sensor2 asPerNode for category EdgeNode		
		replicate parking_manager2 asVoterCluster with [3,5] instances and ParkingManagerVoter2
	}
}