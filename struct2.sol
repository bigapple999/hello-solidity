// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Password {

    struct Info {

        string text;
        bool boolx;
    }

    Info[] public infos;

    function Push_Info (string calldata intext) public {

        infos.push(Info(intext, false));
    }

    function Set_Info (uint index, string calldata intext) public {

        Info storage info = infos [index];
        info.text = intext;

    }

}
