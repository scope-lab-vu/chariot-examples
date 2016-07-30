__author__ = "Subhav Pradhan"

import psutil
import csv
import time
import sys, getopt

def monitor(dmPID, nmPID):
    dmCPU = 0
    nmCPU = 0
    dmMemory = 0
    nmMemory = 0
    sent = 0
    recv = 0
    
    dmProcess = psutil.Process(dmPID)
    dmCPU = dmProcess.cpu_percent()
    dmMemory = (dmProcess.memory_info()[1]) #Bytes.

    nmProcess = psutil.Process(nmPID)
    nmCPU = nmProcess.cpu_percent()
    nmMemory = (nmProcess.memory_info()[1]) #Bytes

    networkBandwidth = psutil.net_io_counters(pernic=True)["eth0"]
    sent = (networkBandwidth.bytes_sent)    #Bytes
    recv = (networkBandwidth.bytes_recv)    #Bytes
    
    with open("/home/ubuntu/tmpResourceMonitor/ResourceUsage.csv", "ab") as f:
        writer = csv.writer(f)
        writer.writerow([(dmCPU + nmCPU), (dmMemory + nmMemory), sent, recv])
        f.close()

def print_usage():
    print "USAGE:"
    print "ResourceMonitor --dmPID <DeploymentManager PID> --nmPID <NodeMembership PID>"

def main():
    try:
        opts, args = getopt.getopt(sys.argv[1:], "hdn",
                                   ["help", "dmPID=", "nmPID="])
    except getopt.GetoptError:
        print "Cannot retrieve passed parameters."
        print_usage()
        sys.exit()

    dmPID = None
    nmPID = None

    for opt, arg in opts:
        if opt in ("-h", "--help"):
            print_usage()
            sys.exit()
        elif opt in ("-d", "--dmPID"):
            print "DeploymentManager PID:", arg
            dmPID = int(arg)
        elif opt in ("-n", "--nmPID"):
            print "NodeMembership PID:", arg
            nmPID = int(arg)
        else:
            print "Invalid command line argument."
            print_usage()
            sys.exit()
    
    if dmPID is None or nmPID is None:
        print "PIDs for DeploymentManager and NodeMembership is required"
        print_usage()
        sys.exit()   
 
    while 1:
        monitor(dmPID, nmPID)
        time.sleep(5)

if __name__ == '__main__':
    main()
