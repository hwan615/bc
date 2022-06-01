pragma solidity ^0.8.14;

contract Voting {
    // constructor to initialize candidates
    // vote for candidates
    // get count of votes for each candidates

    bytes32[] public candidateList;
    mapping (bytes32 => uint8) public votesReceived;

    constructor(bytes32[] memory candidateNames) {
        candidateList = candidateNames;
    }

    function voteForCandidate(bytes32 candidate) public {
        require(validCandidate(candidate));
        votesReceived[candidate] += 1;
    } 

    function totalVotesFor(bytes32 candidate) view public returns(uint8) {
        require(validCandidate(candidate));
        return votesReceived[candidate];
    }

    function validCandidate(bytes32 candidate) view public returns(bool) {
        for(uint i = 0; i < candidateList.length; i++) {
            if (candidateList[i] == candidate) {
                return true;
            }
        }
        return false;
    }
}

deployedContract.deploy({
    data: bytecode,
    arguments: [['Cha', 'Young', 'hwan'].map(name => web3.utils.asciiToHex(name))]
}).send({
    from: 
})

