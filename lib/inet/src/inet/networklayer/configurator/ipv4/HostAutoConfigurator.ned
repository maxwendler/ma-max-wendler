//
// Copyright (C) 2009 Christoph Sommer <christoph.sommer@informatik.uni-erlangen.de>
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
//
// ---------------------------------------------------------------------------------
//
// This file is modified compared to the original version of INET such that it works
// with space_Veins <https://github.com/veins/space_veins>. Please use a tool like
// 'meld' in order to see the differences.
// Author of the modifications is Mario Franke <research@m-franke.net>.
//

package inet.networklayer.configurator.ipv4;

import inet.networklayer.configurator.contract.IIpv4NodeConfigurator;

//
// ~HostAutoConfigurator automatically assigns IP addresses and sets up routing table.
// It has to be added into each host.
//
// This configurator is deprecated. Please use ~Ipv4NetworkConfigurator whenever it is possible.
// This module is kept only because the ~Ipv4NetworkConfigurator cannot assign IP addresses
// to modules that are dynamically created/destroyed.
//
simple HostAutoConfigurator like IIpv4NodeConfigurator
{
    parameters:
        string interfaceTableModule;
        string interfaces = default("wlan");         // list of interfaces to autoassign addresses to, separated by a single space characters
        string addressBaseSatelliteNic = default("10.0.0.0");    // start of address range from which to automatically assign an address to the autoassignInterfaces
        string netmaskSatelliteNic = default("255.0.0.0");       // netmask of subnet in which to automatically assign an address to the autoassignInterfaces
        string addressBaseWlanNic = default("192.0.0.0");    // start of address range from which to automatically assign an address to the autoassignInterfaces
        string netmaskWlanNic = default("255.0.0.0");       // netmask of subnet in which to automatically assign an address to the autoassignInterfaces
        string mcastGroups = default("");         // list of IP addresses of multicast groups to join, separated by a single space characters
        @display("i=block/cogwheel");
}

