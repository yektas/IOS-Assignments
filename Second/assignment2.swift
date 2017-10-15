

// 1.Write a function that returns tuple.

func getCityandPlateNumber() -> (String, Int)
{
	let city: String = "İstanbul"
	let plate: Int = 34
	return (city, plate)
}
print(getCityandPlateNumber())

// 2.Write a function that returns tuple with parameter labels.

func myGrade() -> ( course: String, gradeLetter: String)
{
	let course = "IOS Swift"
	let gradeLetter = "A" //Of course

	return (course, gradeLetter)
}
print(myGrade())

// 3.Write switch control that checks a tuple values and executes different cases.
typealias Temperatures = (current: Int, optimal: Int)

func checkTemperature(_ temps: Temperatures)
{
	switch temps
	{
		case let (current, optimal)  where current > optimal:
			print("Too hot, you should decrease the temperature.")
		case let (current, optimal)  where current < optimal:
			print("Too cold, you should increase the temperature.")
		case let (current, optimal)  where current == optimal:
			print("Perfect, this is the optimal temperature.")
		default:
			print("No opinion")
	}
}
let temperatures1: Temperatures = (30, 25)
let temperatures2: Temperatures = (20, 25)
let temperatures3: Temperatures = (22, 22)
checkTemperature(temperatures1)
checkTemperature(temperatures2)
checkTemperature(temperatures3)

// 4.Put the tuple type into typealias and use it in a function while returning.

typealias Info = ( name: String, age: Int)

func getUserInfo(_ name: String, _ age: Int) -> Info
{
	return (name, age)
}

let user1 = getUserInfo("Sercan", 22)
print(user1.name)
print(user1.age)

// 5.Create an array with 5 elements

var groceryList: [String] =
[
	"Bacon",
	"Chicken",
	"Nutella",
	"Popcorn",
	"French Fries"
]

// 6.Loop over the created array and process the elements using for loop.

func worthlessList(_ list: [String]) -> [String] {
	var notWorthIt: [String] = []
	for item in list
	{
		if (item != "Nutella")
		{
			notWorthIt.append(item)
		}
	}
	return notWorthIt
}

print(worthlessList(groceryList))
