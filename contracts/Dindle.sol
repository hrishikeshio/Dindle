import "ConvertLib.sol";

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
		string image;
		ufixed0x256 price;
		ufixed0x256 resellPrice;
		ufixed0x256 resellCommission;
		address[] owner;
	}

	struct Owner{
		address addr;
		string name;
		ufixed stake;
	}

	struct Licensee{
		address addr;
		string name;
	}


	function Dindle (ufixed0x256 platformCommission) noether public returns (bool _success) {
		uint totalBooks=0;
		ufixed0x256 platformCommission;
	}

	function register (	
		string bookName,
		string authorName,
		string image,
		ufixed0x256 price,
		ufixed0x256 resellPrice,
		ufixed0x256 resellCommission,
		address[] owner
		) noether public returns (uint bookID)
	{
		
		if(ownership[identity].addr!=0)
		{
		    throw;
		}
		bookID=numBooks++;
		books[bookID]=Book(0,bookName,)
		//ownership[identity]=bookOwner(msg.sender);	
	}
	
	function transfer(bytes32 identity,address reciever) noether public returns (bool _success)
	{   
	    if(ownership[identity].addr!=msg.sender)
	    {
	        throw;
	    }
	    ownership[identity]=bookOwner(reciever);
	}

	function checkOwnership(bytes32 identity) constant returns (address) 
	{
		return ownership[identity].addr;
	}

}