import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
	component HighResolutionImageComponent {
		provides high_resolution_image_capture {
			hr_image_t as high_resolution_image_capture.high_resolution_image_sender
		}
		
		requires ImagingSatellite.default_imaging_satellite.hr_camera device
		requires 2048 MB memory
	}
}