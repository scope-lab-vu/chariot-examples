import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
	
	nodeCategory ImagingSatellite {
		nodeTemplate default_imaging_satellite {
			memory 2048 MB
			storage 4096 MB
			
			device gpu
			device hr_camera
			device lr_camera
		}
	}
	
	nodeCategory SimpleSatellite {
		nodeTemplate default_simple_satellite {
			memory 1024 GB
			storage 2048 MB
		}
	}
}