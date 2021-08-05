// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SolutionManufacturing is ERC721{
    constructor() ERC721 ('SolutionManufacturing' , 'SM') {
    }
    // Door[] public doors;
    // Controller[] public controllers;
    // ControlPanel[] public controlPanels;
    // CallSign[] public callSigns;
    
    uint256 doorId = 1;
    uint256 controllerId = 1;
    uint256 controlPanelId = 1;
    uint256 callSignId = 1;

    // struct Door {
    //     uint256 id;
    //     uint256 nbOfAluminumBars;
    //     uint256 nbOfStainlessSheets;
    //     uint256 nbOfSprings;
    //     uint256 nbOfSensors;
    // }
    //  struct Controller {
    //     uint256 id;
    //     uint256 nbOfAluminumBars;
    //     uint256 nbOfStainlessSheets;
    //     uint256 nbOfBumpers;
    //     uint256 nbOfLeds;
    // }

    // struct ControlPanel {
    //     uint256 id;
    //     uint256 nbOfAluminumBars;
    //     uint256 nbOfStainlessSheets;
    //     uint256 nbOfBumpers;
    //     uint256 nbOfLeds;
    // }

    // struct CallSign {
    //     uint256 id;
    //     uint256 nbOfAluminumBars;
    //     uint256 nbOfStainlessSheets;
    //     uint256 nbOfBumpers;
    //     uint256 nbOfLeds;
    // }

    // function addingDoors(
    //     uint256 id,
    //     uint256 nbOfAluminumBars,
    //     uint256 nbOfStainlessSheets,
    //     uint256 nbOfSprings,
    //     uint256 nbOfSensors
    // ) public {
    //     for (uint256 i = 0; i < doors.length; i++) {
    //         doors[doors.length].id = doorId;
    //         doors[doors.length].nbOfAluminumBars = nbOfAluminumBars;
    //         doors[doors.length].nbOfStainlessSheets = nbOfStainlessSheets;
    //         doors[doors.length].nbOfSprings = nbOfSprings;
    //         doors[doors.length ].nbOfSensors = nbOfSensors;
    //         doorId++;
    //     }
    // }
    // function calculatedDoors(uint256 id)
    // public
    // view
    // returns (
    //     uint256,
    //     uint256,
    //     uint256,
    //     uint256,
    //     uint256
    // )
    // {
    //     for (uint256 i = 0; i < doors.length; i++) {
    //         if (doors[i].id == id) {
    //             return (
    //                 doors[i].id,
    //                 doors[i].nbOfAluminumBars,
    //                 doors[i].nbOfStainlessSheets,
    //                 doors[i].nbOfSprings,
    //                 doors[i].nbOfSensors
    //             );
    //         }
    //     }
    // }

    // function addingController(
    //     uint256 nbOfAluminumBars,
    //     uint256 nbOfStainlessSheets,
    //     uint256 nbOfBumpers,
    //     uint256 nbOfLeds
    // ) public {
    //     for (uint256 i = 0; i < controllers.length; i++) {
    //     controllers[controllers.length].id = controllerId;
    //     controllers[controllers.length].nbOfAluminumBars = nbOfAluminumBars;
    //     controllers[controllers.length].nbOfStainlessSheets = nbOfStainlessSheets;
    //     controllers[controllers.length].nbOfBumpers = nbOfBumpers;
    //     controllers[controllers.length].nbOfLeds = nbOfLeds;
    //     controllerId++;
    //     }
    // }
    // function calculatedController(uint256 id)
    // public
    // view
    // returns (
    //     uint256,
    //     uint256,
    //     uint256,
    //     uint256
    // )
    // {
    //     for (uint256 i = 0; i < controllers.length; i++) {
    //         if (controllers[i].id == id) {
    //             return (
    //                 controllers[i].id,
    //                 controllers[i].nbOfAluminumBars,
    //                 controllers[i].nbOfStainlessSheets,
    //                 controllers[i].nbOfLeds
    //             );
    //         }
    //     }
    // }

    // function addingControlPanel(
    //     uint256 nbOfAluminumBars,
    //     uint256 nbOfStainlessSheets,
    //     uint256 nbOfLeds
    // ) public {
    //     for (uint256 i = 0; i < controlPanels.length; i++) {
    //         controlPanels[controlPanels.length].id = controlPanelId;
    //         controlPanels[controlPanels.length].nbOfAluminumBars = nbOfAluminumBars;
    //         controlPanels[controlPanels.length].nbOfStainlessSheets = nbOfStainlessSheets;
    //         controlPanels[controlPanels.length].nbOfLeds = nbOfLeds;
    //         controlPanelId++;
    //     }
    // }

    // function calculatedControlPanel(uint256 id)
    // public
    // view
    // returns (
    //     uint256,
    //     uint256,
    //     uint256,
    //     uint256
    // )
    // {
    //     for (uint256 i = 0; i < controlPanels.length; i++) {
    //         if (controlPanels[i].id == id) {
    //             return (
    //                controlPanels[i].id,
    //                controlPanels[i].nbOfAluminumBars,
    //                controlPanels[i].nbOfStainlessSheets,
    //                controlPanels[i].nbOfLeds
    //             );
    //         }
    //     }
    // }

    // function addingCallSign(
    //     uint256 nbOfAluminumBars,
    //     uint256 nbOfStainlessSheets,
    //     uint256 nbOfLeds
    // ) public {
    //     for (uint256 i = 0; i < callSigns.length; i++) {
    //         callSigns[callSigns.length].id = callSignId;
    //         callSigns[callSigns.length].nbOfAluminumBars = nbOfAluminumBars;
    //         callSigns[callSigns.length].nbOfStainlessSheets = nbOfStainlessSheets;
    //         callSigns[callSigns.length].nbOfLeds = nbOfLeds;
    //         callSignId++;
    //     }
    // }

    // function calculatedCallSign(uint256 id)
    // public
    // view
    // returns (
    //     uint256,
    //     uint256,
    //     uint256,
    //     uint256
    // )
    // {
    //     for (uint256 i = 0; i < callSigns.length; i++) {
    //         if (callSigns[i].id == id) {
    //             return (
    //                callSigns[i].id,
    //                callSigns[i].nbOfAluminumBars,
    //                callSigns[i].nbOfStainlessSheets,
    //                callSigns[i].nbOfLeds
    //             );
    //         }
    //     }
    // }

    Door[] public doors;
    // string[] public doors ;
    mapping(string => bool) _doorExists;
    function mintDoor (string memory _door) public{
        require(!_doorExists[_door]);
        doors.push(_door);
        uint _id = doors.length - 1;
        _doorExists[_door] = true;
        _mint(msg.sender, _id);
        _doorExists[_door] = true;

    // function mint 
    //     (uint256 id,
    //     uint256 nbOfAluminumBars,
    //     uint256 nbOfStainlessSheets,
    //     uint256 nbOfSprings,
    //     uint256 nbOfSensors) public{

    // struct Door {
        // uint256 _id;
        uint256 nbOfAluminumBars;
        uint256 nbOfStainlessSheets;
        uint256 nbOfSprings;
        uint256 nbOfSensors;
    // }
        
        for (uint256 i = 0; i < doors.length; i++) {

        doors[doors.length]._id = _id;
        doors[doors.length].nbOfAluminumBars = nbOfAluminumBars;
        doors[doors.length].nbOfStainlessSheets = nbOfStainlessSheets;
        doors[doors.length].nbOfSprings = nbOfSprings;
        doors[doors.length].nbOfSensors = nbOfSensors;
       
        }
    }

    function calculatedDoors(uint256 id) public view returns (uint256, uint256, uint256, uint256, uint256 )
    {
        for (uint256 i = 0; i < doors.length; i++) {
            if (doors[i].id == id) {
                return (
                    doors[i].id,
                    doors[i].nbOfAluminumBars,
                    doors[i].nbOfStainlessSheets,
                    doors[i].nbOfSprings,
                    doors[i].nbOfSensors
                );
            }
        }
    }

}
