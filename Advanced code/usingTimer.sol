// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// import "@openzeppelin/contracts/utils/Timers.sol";
import "https://github.com/bigapple999/openzeppelin-contracts/blob/master/contracts/utils/Timers.sol";


contract useTimer {

    uint64 internal symbol;
    using Timers for uint256;

    struct Timestamp {
        uint _deadline;
    }

    Timestamp public TS;

    // using Timers for Timestamp;


    // function setDline (TimestampX memory _timer, uint64 _timestamp) public {
    //     // symbol = _timestamp;
    //     TS.setDeadline(_timer, _timestamp);
    //     TS.getDeadline();
    // }

    // function getTimestamp (Timestamp memory _timer) public view returns (uint64) {

    function getTimestamp (uint256 _timer) public view returns (uint64) {    
        // TS._deadline = _timer;
        return _timer.getDeadline(TS);
    }
}
