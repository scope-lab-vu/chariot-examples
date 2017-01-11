import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
	goalDescription ImagingSatelliteCluster {
		cluster_flight_planning as objective ClusterFlightPlanning
		satellite_flight as objective SatelliteFlight
		imaging as objective Imaging
	}
}