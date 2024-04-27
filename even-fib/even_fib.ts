function main() {
	let sum = 0;
	do {
		let nthFib = 1;
		let fibNum = fib(nthFib);
		if(evenFib(fib)) {
			sum += fibNum;
		}
		nthFib++
	} while(fibNum < 4_000_000) 
	
	return sum;
}

function fib(n: number): number {
	return n === 1 ? 1 : fib(n - 1);
}

function evenFib(n: number): boolean {
	return n % 2 === 0;
}