import edu.vanderbilt.isis.chariot.smartparkingbasic2.*
package edu.vanderbilt.isis.chariot.smartparkingbasic2 {
	nodeCategory EdgeNode {
		nodeTemplate Edison {
			memory 1024 MB		// 1 GB
			storage 4096 MB		// 4 GB
			device ultrasonic_ranger
		}
	}
}
