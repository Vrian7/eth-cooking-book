pragma solidity >=0.5.0 <=0.8.15;

contract CookingBook{
    struct Ingredient{
        uint8 quantity;
        string unit;
        string name;
    }

    struct Direction{
        uint number;
        string description;
    }

    struct Recipe{
        string name;
        string content;
        uint8 ingredientCount;
        uint8 directionCount;
        mapping(uint8 => Ingredient) ingredients;
        mapping(uint8 => Direction) directions;
    }

    Recipe[] public recipes;
    Ingredient[] public ingredients;
    Direction[] public directions;
    mapping(uint => address) public recipeToChef;
    mapping(address => uint) chefRecipeCount;
    //mapping(uint => uint) 

    constructor() public {
        //createBook("Water");
    }
    function _createRecipe(
        string memory _name,
        string memory _content,
        string[] memory _ingredients,
        string[] memory _directions
        ) public {
        for(uint it=0; it<_ingredients.length; it++){

        }
        Recipe storage newRecipe = recipes.push();
        newRecipe.name = _name;
        newRecipe.content = _content;
        uint id = recipes.length-1;
        recipeToChef[id] = msg.sender;
        chefRecipeCount[msg.sender] = chefRecipeCount[msg.sender] + 1;
    }
    function hello() pure public {
        
    }
}