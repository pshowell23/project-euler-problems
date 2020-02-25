require 'prime'

def truncatable_prime?(n)
    if n >= 11
        s = n.to_s
        truncated_left = (0...s.length-1).map {|i| s[0..i]}.map(&:to_i)
        truncated_right = (1...s.length).map {|i| s[i..-1]}.map(&:to_i)
        (truncated_left + truncated_right + [n]).all?(&:prime?)
    else
        false
    end
end

primes = Prime.instance.lazy
solution = primes.select {|n| truncatable_prime?(n)}.take(11).sum
p primes
p solution

# Solution provided by user tokland at https://codereview.stackexchange.com/questions/25780/project-euler-problem-37-truncatable-primes/25819
