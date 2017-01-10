import edu.vanderbilt.isis.chariot.smartparkingcomplex.*
package edu.vanderbilt.isis.chariot.smartparkingcomplex {
	goalDescription SmartParking {
		// Objectives.
		client_interaction as objective ClientInteraction
		occupancy_checking as objective OccupancyChecking
		
		// Replication constraints.
		replicate image_capture asPerNode 
			for category CameraNode
		replicate parking_client asPerNode 
			for category TerminalNode
		replicate occupancy_detector asCluster 
			with [3,5] instances
	}
}