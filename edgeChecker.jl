#EdgeExistence problem in hackerearth.com

path = "C:\\Users\\didier1708\\Documents\\GitHub\\Julia-playground\\EdgeExistence.txt";
r = readlines(path);
myParse = function(str::String)
    a = [parse(Int, word) for word in split(str)];
    return a;
end
rs = map(myParse, r);
k = rs[1][1];
n = rs[1][2];
Edges = rs[2:1+n];
q = rs[n+2][1];
Queries = rs[n+3:n+2+q];
spit = function(query)
    answer = ""
    (query in Edges) ? answer="YES" : answer ="NO";
    return answer
end
Answers = map(spit, Queries);
map(println, Answers);
