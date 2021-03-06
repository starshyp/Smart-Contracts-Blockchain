// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract Quality is ERC721 {
  address public admin;

  constructor() ERC721("Quality", "QA") {
    admin = msg.sender;
  }

  function publicFunction() external {}

  function privateFunction() external onlyAdmin() {
    require(msg.sender == admin, 'Authorized Personnel Only');
  }

  modifier onlyAdmin() {
    require(msg.sender == admin, 'Authorized Personnel Only');
    _;
  }

  struct Verify {
    bool doorTest; //guarantee
    bool cableTest; //guarantee
    bool brakeTest; //guarantee
    uint battPermitTest; //obtain permit
    bool colCert; //cert of conformity for each col. */
  }

  mapping(uint => Verify) public verify;

  Verify[] public verifyTests;
  string[] public verifications;
  /* string[] public battPermit; */
  mapping(string => bool) _verificationExists;
  uint public qualityChk = 1;
  /* mapping(bool => Checks) public checks; */

  function verifyQuality(string memory _grade, bool doorTest, bool cableTest, bool brakeTest, uint battPermitTest, bool colCert) public {
    /* require(!_verificationExists[_grade]);
    verifications.push(_grade);
    uint _id = verifications.length -1; */
    _mint(msg.sender, qualityChk);
    _verificationExists[_grade] = true;
    qualityChk += 1;
    uint id = qualityChk;
    /* verify[id].doorTest = door();
    verify[id].cableTest = cable();
    verify[id].brakeTest = brake();
    verify[id].battPermitTest = batteryPermit();
    verify[id].colCert = certificate(); */

    verifyTests.push(Verify(
      verify[id].doorTest,
      verify[id].cableTest,
      verify[id].brakeTest,
      verify[id].battPermitTest,
      verify[id].colCert
      ));
    verifications.push(_grade);
  }

  struct Permit {
    uint battID; //random function
    string battIssued; //string
    uint battDate; //timestamp
    uint battChain; //current chain ID
    uint battBlock; //block number
  }
  /* Permit batteryShow; */
  Permit[] public battPermit;

  function door(bool doorTest) public returns(string memory doorReturn) {
    return doorTest ? 'Pass' : 'Fail';
  }

  function cable(bool cableTest) public returns(string memory cableReturn) {
    return cableTest ? 'Pass' : 'Fail';
  }

  function brake(bool brakeTest) public returns(string memory brakeReturn) {
    return brakeTest ? 'Pass' : 'Fail';
  }

  function batteryPermit(uint numOfPermits) external onlyAdmin() /*public returns(Permit memory batteryShow)*/ {
    for(uint i=0; i<numOfPermits; i++) {
      Permit memory batteryPermitNew;
      batteryPermitNew.battID = random();
      batteryPermitNew.battIssued = "Rocket Elevators";
      batteryPermitNew.battDate = block.timestamp;
      batteryPermitNew.battChain = block.chainid;
      batteryPermitNew.battBlock = block.number;
      battPermit.push(batteryPermitNew);
      /* return batteryPermitNew; */
    }
  }

  function certificate(bool door, bool brake, bool cable, uint permit/*, Permit memory permit*/) public returns(string memory) {
    /* grade; */
    return door && brake && cable && (permit > 0) /*&& (permit > 0)*/ ? 'Pass' : 'Fail';
    /* return grade; */
  }

  function random() private view returns (uint) {
     return uint(keccak256(abi.encodePacked(block.timestamp))) % 11;
  }

}
