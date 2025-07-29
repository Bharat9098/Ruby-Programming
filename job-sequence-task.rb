def sequence_jobs(jobs)
  return [] if jobs.empty?

  result = []
  dependencies = {}

  jobs.each_line do |line|
    job, dependency = line.strip.split('=>').map(&:strip)
    raise "Jobs can't depend on themselves" if job == dependency

    dependencies[job] = dependency
  end

  visited = {}

  dependencies.each do |job, _|
    visit(job, dependencies, visited, result)
  end

  result
end

def visit(job, dependencies, visited, result, path = [])
  raise "Jobs can't have circular dependencies" if path.include?(job)

  return if visited.key?(job)

  dependency = dependencies[job]
  path << job

  if dependency.nil? || dependency.empty?
    result.unshift(job) # Adding the job to the beginning of the result no significant order
  else
    visit(dependency, dependencies, visited, result, path)
    result.insert(result.index(dependency) + 1, job) # Inserting job after visiting its dependency
  end

  visited[job] = true
  path.pop
end

# Test case 1: Empty string
jobs1 = ""
sequence1 = sequence_jobs(jobs1)
puts sequence1.inspect

# Test case 2: Single job "a"
jobs2 = "a =>"
sequence2 = sequence_jobs(jobs2)
puts sequence2.inspect


# Test case 4: Job c before b, with jobs a, b, c
jobs4 = "a =>\nb => c\nc =>"
sequence4 = sequence_jobs(jobs4)
puts sequence4.inspect


# Test case 3: Jobs a, b, c in no significant order
jobs3 = "a =>\nb =>\nc =>"
sequence3 = sequence_jobs(jobs3)
puts sequence3.inspect

# Test case 5: Jobs a, b, c, d, e, f with specified order
jobs5 = "a =>\nb => c\nc => f\nd => a\ne => b\nf =>"
sequence5 = sequence_jobs(jobs5)
puts sequence5.inspect

# Test case 6: Job c depends on itself
jobs6 = "a =>\nb =>\nc => c"
begin
  sequence6 = sequence_jobs(jobs6)
  puts sequence6.inspect
rescue StandardError => e
  puts e.message
end

# Test case 7: Circular dependency between jobs b, c, and f
jobs7 = "a =>\nb => c\nc => f\nd => a\ne =>\nf => b"
begin
  sequence7 = sequence_jobs(jobs7)
  puts sequence7.inspect
rescue StandardError => e
  puts e.message
end
