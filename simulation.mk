# This file can be added to the current NSO project root directory to add functionality to the current Makefile that is
# created when one starts a project with the ncs-project command.  This is the project specific settings that will be used
# by the general use setupsimulation.mk.  The purpose is to be able to use the same setupsimulation.mk file while putting
# specific project settings in this file.  To incorporate into the project please add the following lines to the
# Makefile of the project
#
# include ./simulation.mk
# include $(NSO_TOOLS_DIR)/setupsimulation.mk

NSO_TOOLS_DIR=/Users/jnemitz/projects/nsotools
# The version of NSO to base this on
NSO_VERSION = 4.6.1
# Directory where packages that should be included in the PROJECT_PACKAGES directory with
# symbolic links
LOCAL_PACKAGES_DIR = /Users/jnemitz/projects/packages
# Packages that are in the LOCAL_PACKAGES_DIR that will be symbolically link in the PROJECT_PACKAGES
# directory
LOCAL_PACKAGES = nso-network-policy-base nso-topology-policy-base
LOCAL_PACKAGES += nso-connection-policy-base nso-device-policy-base
LOCAL_PACKAGES += nso-virl-topology

# List of simulated [device name prefixes:number of devices(0 if no netsim devices of this type should be created
# but the NED should be present):device-types (NEDS)] that will be used
# DEVICES = asr-nyc:1:cisco-iosxr asr-lon:1:cisco-iosxr ios:2:cisco-ios pnp-ned:0:cisco-pnp
#DEVICES = asr-nyc:2:cisco-iosxr:sim asr-lon:2:cisco-iosxr:sim dummy::cisco-ios:real pnp-ned:0:cisco-pnp:real
#DEVICES = asr-nyc:2:cisco-iosxr:sim asr-sfo:2:cisco-iosxr:sim asr-lon:2:cisco-iosxr:sim asr-ber:2:cisco-iosxr:sim asr-sin:2:cisco-iosxr:sim asr-tok:2:cisco-iosxr:sim 
#DEVICES =  p1.fra:1:cisco-iosxr:sim p2.fra:1:cisco-iosxr:sim
#DEVICES = coloA-spine-1:1:cisco-nx:sim
#DEVICES += coloA-spine-2:1:cisco-nx:sim
#DEVICES += coloA-edge-1:1:cisco-iosxr:sim
#DEVICES += coloA-edge-2:1:cisco-iosxr:sim
#DEVICES = coloB-spine-1:1:cisco-nx:sim
#DEVICES = coloB-spine-2:1:cisco-nx:sim
#DEVICES += coloB-edge-1:1:cisco-iosxr:sim
#DEVICES += coloB-edge-2:1:cisco-iosxr:sim
DEVICES += 1300fed-gti-cr-01:1:cisco-iosxr:sim



# Where the NEDs are located and soft links will be created to
NSO_NEDS = /Users/jnemitz/nso/neds/$(NSO_VERSION)

# The NETSIM directory to use
NETSIM_DIR = netsim

# The directory to load initial data (xml files) into NSO from
INIT_DATA_DIR = init_data

# Directories listed here will have their contents deleted during the clean operation and recreated as 
# part of the build operation
NSO_DIRS = ncs-cdb state logs $(NETSIM_DIR) $(INIT_DATA_DIR) 

# Where the project packages located
PROJECT_PACKAGES = packages

# Directories with where xml data files that should be loaded after NSO is started
NSO_POST_START_DATA_DIR = project_data

