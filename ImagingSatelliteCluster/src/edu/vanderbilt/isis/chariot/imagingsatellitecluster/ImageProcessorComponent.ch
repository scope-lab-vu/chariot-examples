import edu.vanderbilt.isis.chariot.imagingsatellitecluster.*
package edu.vanderbilt.isis.chariot.imagingsatellitecluster {
	component ImageProcessorComponent {
		provides image_processor {
			lr_image_t as image_processor.low_resolution_image_receiver
			hr_image_t as image_processor.high_resolution_image_receiver
		}
		
		requires 1024 MB memory
		requires 2048 MB storage
		requires ImagingSatellite.default_imaging_satellite.gpu device
	}
}