import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
	goalDescription ImagingSatelliteCluster {
		cluster_flight_planning as objective ClusterFlightPlanning
		satellite_flight as objective SatelliteFlight
		imaging as objective Imaging
		
		replicate ground_manager asPerNode for category GroundStation
		replicate satellite_bus asPerNode for category ImagingSatellite, SimpleSatellite
		replicate orbit_controller asPerNode for category ImagingSatellite, SimpleSatellite
		replicate trajectory_planner asCluster with [3, 5] instances
	}
}