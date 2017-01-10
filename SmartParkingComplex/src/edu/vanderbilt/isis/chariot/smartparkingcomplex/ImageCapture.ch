import edu.vanderbilt.isis.chariot.smartparkingcomplex.*
package edu.vanderbilt.isis.chariot.smartparkingcomplex {
	hardware component ImageCapture{
 		provides image_capture {
 			detector_response_t as image_capture.detector_response
 			detector_request_t as image_capture.detector_request
 			image_t as image_capture.image
 		}
 		
 		requires 32 MB memory
 		
 		startScript "sh ImageCapture.sh"
 	}
}