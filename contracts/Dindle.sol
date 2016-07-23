//import "ConvertLib.sol";

contract Dindle{
 	address contractOwner = msg.sender;
 	bool public _success = true;
	mapping(uint => Book) public books;
	uint numBooks;


    
    modifier noether { if (msg.value > 0) throw; _ }

	struct Book{
		uint serial;
		string bookName;
		string authorName;
		string imageURL;
		ufixed0x256 price;
		ufixed0x256 resellPrice;
		ufixed0x256 resellCommission;
		mapping (uint => Owner) owners;
		uint numOwners;
	}

	struct Owner{
		string ownerName;
		address ownerAddress;
		ufixed0x256 stake;
	}

	struct Licensee{
		string licenseeName;
		address licenseeAddress;
	}


	function Dindle (ufixed0x256 platformCommission) noether  {
		uint totalBooks=0;
		//platformCommission;
	}

	function register (	
		string bookName,
		string authorName,
		string imageURL,
		ufixed0x256 price,
		ufixed0x256 resellPrice,
		ufixed0x256 resellCommission,
		string ownerName,
		ufixed0x256 stake
		) noether public returns (uint bookID)
	{
		bookID=numBooks++;
		books[bookID]=Book(0,bookName,authorName, imageURL, price, resellPrice, resellCommission,0);
		Book b = books[bookID];	
// 		ufixed0x256 stake=100.0;
		b.owners[0]=Owner(ownerName,msg.sender,stake);
		b.numOwners=1;
	}
	
	// function transfer(bytes32 identity,address reciever) noether public returns (bool _success)
	// {   
	//     if(ownership[identity].addr!=msg.sender)
	//     {
	//         throw;
	//     }
	//     ownership[identity]=bookOwner(reciever);
	// }

	// function checkOwnership(bytes32 identity) constant returns (address) 
	// {
	// 	return ownership[identity].addr;
	// }

}