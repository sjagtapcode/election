// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Election {
    struct Person {
        string name;
        address id;
        uint64 adhaarId;
    }
    struct Nominee {
        string name;
        uint8 id;
    }
    Nominee[] public Nominees = [
        Nominee({
            name: "DEMON",
            id: 0
        }),
        Nominee({
            name: "GOD",
            id: 1
        }),
        Nominee({
            name: "HUMAN",
            id: 2
        })
    ];
    Person[] voters;
    mapping(uint64 => Person) public VotersListByAdhaar;
    mapping(address => Person) public VotersListByAddress;

    function addPerson(address id, uint64 adhaarId, string memory name) public returns (bool) {
        // verify adhaar + age?
        // check if user already exists
        // verify adhaar + id is correctly paired
        Person memory newVoter = Person(name, id, adhaarId);
        VotersListByAddress[id] = newVoter;
        VotersListByAdhaar[adhaarId] = newVoter;
        return false;
    }

}

