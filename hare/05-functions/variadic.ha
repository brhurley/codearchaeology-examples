use fmt;

// 'nums' collects any number of int arguments into a slice
fn sum(nums: int...) int = {
	let total = 0;
	for (let i = 0z; i < len(nums); i += 1) {
		total += nums[i];
	};
	return total;
};

export fn main() void = {
	fmt::printfln("sum() = {}", sum())!;
	fmt::printfln("sum(1, 2, 3) = {}", sum(1, 2, 3))!;
	fmt::printfln("sum(10, 20, 30, 40) = {}", sum(10, 20, 30, 40))!;
};
