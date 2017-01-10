import edu.vanderbilt.isis.chariot.smartparkingcomplex.*
package edu.vanderbilt.isis.chariot.smartparkingcomplex {
	component OccupancyDetector {
 		provides occupancy_detector {
 			image_t as occupancy_detector.image
 			occupancy_status_t as occupancy_detector.occupancy_status
 		}
 		
 		requires 256 MB memory
 		
 		startScript "sh OccupancyDetector.sh"
 	}
}