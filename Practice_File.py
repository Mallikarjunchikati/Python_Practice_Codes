x = 'Mallikarjun'

def my_func():
    b = 'Chikarimalla'
    print('my name is ' + b)

my_func()
print('my surname is ' + x)

x = 'Mallikarjun'
def my_func():
    global x
    x = 'Chikatimalla'
    print('my name is' + x)

my_func()
print('my surname is ' + x)

e = int(input("enter first number:"))
f = int(input("enter second number:"))
c = e + f
print(c)

# # Here we print characters all well using below code and we can do indexing as well below code indexing done while entering the
# # character in output cmd shell
ch = input('enter a char:')[10]
print(ch)
#
ch = input('enter a char:')
print(ch[2])

a = int(input("enter a number:"))
print(a)
# which evalutes the given input
a = eval(input('enter a number:'))
print(a)
import random

x = 4
r = x % 2
if (r==0):
    print("even")
elif (r >= 2):
    print("me")
else:
    print("odd")

i = 1
while i<=6:
    print("Hello")
    i = i+1

i = 4
while i <= 8:
    print("mallik")
    i=i+1

i = 12
while i <= 15:
    print("mike")
    i = i+1

i = 1
while i < 25:
    print(random.randint(1,20),i)
    i= i+1

i = 5
while i > 1:
    print(random.randint(1,20),i)
    i= i-1

i = 10
while i <= 13:
    print("MY NAME",i)
    i= i + 1

i = 10
while i > 8:
    print("MY NAME",i)
    i= i - 1

i=5
while i <= 13:
    print('Mallikarjun',i)
    i = i + 1

i=15
while i > 13:
    print('Mallikarjun',i)
    i = i - 1

i = 1
while i <= 5:
    print(i,'Mallikarjun',end='',)
    j = 1
    while j <= 5:
        print(' Chikatimalla',end='',)
        j = j+1
    i = i+1
    print()

i = 1
while i <= 5:
    print(i,'good',end = '')
    i = i+1

i = 6
while i >=4:
    print(i,"My name is ",end = " ")
    j = 6
    while j <= 10:
        print("chikatimalla",end = " ")
        j = j+1
    i = i-1
    print()

i = 10
while i >= 5:
    print(i,"Mallik",end = " ")
    j = 10
    while j >=5:
        print("Arjun",end = " ")
        j = j-1
    i = i - 1
    print()

i = 10
while i >= 6:
    print(i,"data is data $$",end = " ")
    j = 10
    while j >=6:
        print(" #data is not date haa# ",end = " ")
        j = j-1
    i = i-1
    print()

i = 10
while i <= 13:
    print(i,"data is data $$",end = " ")
    j = 10
    while j <=13:
        print(" #data is not date haa# ",end = " ")
        j = j+1
    i = i+1
    print()

i = 1
while i <= 5:
    x = "Mallikarjun ch"
    print(i,x,end = " ")
    j = 1
    while j <= 5:
        y = "manisharan ch"
        print(y,end = " ")
        j = j + 1
    i = i+1
    print()

x = "mallikarjun"
for i in x:
    print(i)

x = ["mallik","arjun"]
for i in x:
    print(i)

x = eval(input("enter a number :"))
print(x)

x = input("enter a character:")
print(x[12])
x = input("enter a character:")[5]
print(x)
for i in range(20,10,-2):
    print(i)

for i in range(20,50):
    if i % 2 != 0:
        print(i)

x = ("my name is mallikarjun")
if "i" in x:
    for i in x:
        print(i,True)
else:
    print(False)

av = 106

x = int(input("enter no of phones:"))
i = 1
while i <= x:
    if i > av:
        break
    print(i,"phones")
    i+=1

s = 12
x=int(input("enter the number of Books: "))
i = 1
while i <= x:
    if i > s:
        print("No stock")
        break
    print(i,"Books")
    i+=1

for i in range(1,100):
    if i % 3== 0 or i % 5 == 0:
        continue
    print(i)


for i in range(1,15):
    if i % 2!=0:
        pass
    else:
        print(i)

for i in range(1,10000):
    if i% 2!=0:
        print(i)

for i in range(10):
    if i ==5:
        print("it breacked")
        break
    print(i,"My wold")

i=1
while i <=10:
    print(i,"My world")
    i+=1


i = 1
while i <= 10:
    print("# # # #")
    i=i+1


i = 1
while i <= 4:
    x = ("#")
    print(x,end = " ")
    i =i +1

i = 1
while i <=4:
    x = ("#")
    print(x,end = " ")
    j=1
    while j <=4:
        y = ("#")
        print(y,end = " ")
        j = j+1
    i = i+1
    print()

i = 15
while i >= 1:
    x = ("my name is mallikarjun ch")
    print(i,x,end = " ")
    j = 1
    while j >= 0:
        y = ("I lives in fithcburg")
        print(y,end = " ")
        j = j-1
    i = i -1
    print()

for i in range(4):
    for j in range(4):
        print("#",end = " ")
    print()

for i in range(4):
    for j in range(i+1):
        print("#",end = " ")
    print()

for i in range(4):
    for j in range(4-i):
        print("#",end = " ")
    print()

x = [10,20,30,50,16,18,20,91]
for num in x:
    if num % 2==0:
        print(num)
        break
else:
    print("not found")

x = [10,20,30,50,16,18,20,91,139]
for num in x:
    if num % 2!=0:
        print(num)
        break
else:
    print("not found")

import array as arr

from array import  *

vals = array ("i",[1,2,3,4])
print(vals)

vals2 = array("i",[123,145,168])
print(vals2)

state = ["MA","SA","CA","VA","MO"]
for i in state:
    print(i)

print(state)

state = ["MA","SA","CA","VA","MO"]
i = 0
while i < len(state):
    print(state[i])
    i+=1

val2 = array('u',["M","A","A","A","O"])

newarr2 = array(val2.typecode,(a for a in val2))
print(newarr2)

val1 = array('i',[10,15,5,6,7,8])

newarr= array(val1.typecode,(a+a for a in val1))
newarr.sort( )
print(newarr)

from array import *
val2 =array("i",[])
x = int(input("enter the lenght of array:"))

for i in range(x):
    d=int(input("enter the values to array:"))
    val2.append(d)
print(val2)

x = array('i',[])
d =int(input("enter the length of array:"))

for i in range(d):
    n = int(input("enter array values:"))
    x.append(n)
print(x)

print(x[0])

i = 2
while i >= 1:
    x = "mallikarjun Chikatimalla"
    print(i,x,end = " ")
    j = 1
    while j > 0:
        y = "lives in firchburg"
        print(y,end = " ")
        j=j-1
    i=i-1
    print()


df1 = array('i',[])
y = int(input("enter the length of array :"))

for i in range(y):
    n=int(input("enter array characters"))
    df1.append(n)
print(df1)


country = ["USA","CANADA","INDIA","RUSSIA","CHINA","SRI LANKA","PAKISTAN","BRAZIL","AGENTINA","CUBA","UK","NORWAY","PORTUGAL"]

i = 0
while i < len(country):
    print(country[i])
    i = i+1

for x in country:
    print(x)
    if x == 'BRAZIL':
        break

i = 0
while i < len(country):
    print(country[i])
    if country[i] == 'RUSSIA':
        break
    i = i + 1

st = 10
x = int(input("enter no of phone:"))

i = 1
while i <= x:
    if i > st:
        print("no stock")
        break
    print(i,"phones")
    i =i+1



i = 1
while i<= 100:
    if i == 48:
        print("I got my number")
        break
    print(i)
    i=i+1

for i in range(50):
    if i == 25:
        print("my number is 25")
        break
    print(i)
    i+=1

stock = 25
df1 = int(input("enter no of cars you need:"))
i=1
while i < df1:
    if i > stock:
        print("No stock")
        break
    print(i,"This your orders")
    i+=1

country = ["USA","CANADA","INDIA","RUSSIA","CHINA","SRI LANKA","PAKISTAN","BRAZIL","AGENTINA","CUBA","UK","NORWAY","PORTUGAL"]

i = 0
while i < len(country):
    if country[i] == "UK":
        print("Done")
        break
    print(i,country[i])
    i+=1

for x in country:
    print(x)
    if x == "CHINA":
        break


x = array([1,22,3,4,5])
x= x+10
print(x)

x = [1,22,3,4,5]
x = [i+10 for i in x]
print(x)


def add(a,b):
    c =a+b
    return c

result =add(5,44)
print(result)

country = ["USA","CANADA","INDIA","RUSSIA","CHINA","SRI LANKA","PAKISTAN","BRAZIL","AGENTINA","CUBA","UK","NORWAY","PORTUGAL"]
def find(country):
    if "K" or "A" in country:
        return country

x= filter(find,country)
x=list(x)
print(x)

stock = 10
x = int(input("enter the quantity:"))
i=0
while i <= x:
    if i >= stock:
        print("No more orders")
        break
    print(i,"stocks")
    i+=1

countries = ["USA","CANADA","INDIA","RUSSIA","CHINA","SRI LANKA","PAKISTAN","BRAZIL","AGENTINA","CUBA","UK","NORWAY","PORTUGAL"]
i=0
while i <=len(countries):
    if countries[i] == 'BRAZIL':
        print("Done")
        break
    print(i,countries[i])
    i+=1



countries = ["USA","CANADA","INDIA","RUSSIA","CHINA","SRI LANKA","PAKISTAN","BRAZIL","AGENTINA","CUBA","UK","NORWAY","PORTUGAL"]
def find(countries):
    if 'B' in countries:
        return countries
    else:
        print(countries)
x= filter(find,countries)
x=list(x)
print(x)

def person(name,age):
    print(name)
    print(age)
person('mallikarjun',26)

def sum(*b):
    c = 0
    for i in b:
        c = c +i
    print(c)
sum(5,10,5,15)

def square(item_list):
    squares = []
    for l in item_list:
        squares.append(l ** 2)
    return squares

my_list = [17, 52, 8];
my_result = square(my_list)
print("Squares of the list are: ", my_result)

def divide(item_list):
    divide = []
    for l in item_list:
        divide.append(l / 2)
    return divide
#
my_list = [17, 52, 8];
my_result = divide(my_list)
print("Squares of the list are: ", my_result)

def function(*args_list):
    ans = []
    for l in args_list:
        ans.append(l.upper())
    return ans


object = function('Python', 'Functions', 'tutorial')
print(object)

def dat(*items):
    x = []
    for r in items:
        x.append(r.upper())
    return x
d= dat('mallikarjun','chikatimala','gupta')
d=len(d)
print(d)

x = 'Mallikarjun'
def my_func():
    global x
    x = 'chikatimalla'
    print("my name is "+x)
my_func()
print("my full name "+ x)

i = 10
while  i <= 15:
    print("my name is mallikarjun",i)
    i+=1
i = 10
while i >= 8:
    print("my name is mallikarjun",i)
    i-=1

countries = ["USA","CANADA","INDIA","RUSSIA","CHINA","SRI LANKA","PAKISTAN","BRAZIL","AGENTINA","CUBA","UK","NORWAY","PORTUGAL"]
for x in countries:
    print(x)
i = 0
while i < len(countries):
    print(countries[i])
    i=i+1
i=0
while i < len(countries):
    if countries[i] == "RUSSIA":
        print("Its done")
        break
    print(countries[i])
    i = i+1
for x in countries:
    if x == "RUSSIA":
        print("Its done")
        break
    print(x)

def find(countries):
    if "K" in countries:
        return countries

x = filter(find,countries)
x  = list(x)
print(x)

def find(countries):
    if "C" in countries:
        return countries
    else:
        print(countries)

x = filter(find,countries)
x = list(x)
print(x)

stock = 25

i = 0
x = int(input("enter the stocks you need:"))
while i <= x:
    if i >= stock:
        print("No Stocks")
        break
    print("stocks",i)
    i = i+1


def add(a,b):
    c = a+b
    return c

x = add(2,5)
print(x)

def square(x):
    return x**2
y = square(8)
print(y)

def sub(x):
    return x // 2

x = sub(10.8)
print(x)

def sqt(itemlist):
    squares = []
    for x in itemlist:
        squares.append(x**2)
    return squares

my_list = (10,10,10)
y = sqt(my_list)
print(y)

s = [10,10,10]
print(sqt(s))


x = ("mallik","arjun","chikati")
print(x)
y = list(x)
y.append("mike")
x = tuple(y)
print(x)

x=input("enter with charct:")
print(x[2:8])

from array import *

val = array('i',[])
n = int(input("enter the length of array:"))

for i in range(4):
    x = int(input("enter the value for array:"))
    val.append(x)
print(val)

def filing(*items):
    x = ['list']
    for r in items:
        x.append(r.upper())
    return x
d = filing('malli','karjun')
print(d)

def filling(*items):
    x = []
    for g in items:
        x.append(g.upper())
    return x
d = filling("mallik","arjun")
print(d)

def person(*items):
    x = []
    for r in items:
        x.append(r.upper())
    return x


d = person("Mallikarjun","26","Fitchburg","Boston")
print(d)

def data(*bio):
    x =[]
    for r in bio:
        x.append(r)
    return x

d = data("Mallikarjun","Chikatimalla","Mallikarjunchikatimalla","GeethaChikatimalla","ManisharanChikatimalla")
for l in d:
    if len(l) >= 13:
        print(l)
import random
def generate_random_even():
    return random.randint(1, 100) * 2  # Generate a random number between 1 and 50 and multiply by 2 to ensure it's even

# Generate and print 10 random even numbers
for _ in range(10):
    print(generate_random_even())

for i in range(1,10000):
    if i%2 == 0:
        print(i)

for i in range(1,10000):
    if i%2!=0:
        print(i)

def count(lst):
    even = 0
    odd = 0
    for i in lst:
        if i%2==0:
            even+=1
        else:
            odd+=1
    return even,odd
lst = [1,2,3,4,5,6,7,8,9,10,12,14,16,15,17,19,20]
x =count(lst)
print(x)

n = 10  # Example value of n
for i in range(n + 1):  # Including 0 to n
    if i % 2 == 0:
        print(i)

def fib(n):
    a=0
    b=1
    print(a)
    print(b)
    for i in range(2,n):
        c= a+b
        a=b
        b=c
        print(c)
fib(100)

def fib(n):
    a = 0
    b = 1
    print(a)
    print(b)
    for i in range(2,n):
        c = a + b
        a = b
        b = c
        print(c)
fib(100)

def fact(n):
    f = 1
    for i in range(1, n + 1):
        f = f * i
    return f
x = 4
x = fact(16)
print(x)

def fact(n):
    f = 1
    for i in range(1,n+1):
        f = f * i
    return f
x = 4
x = fact(4)
print(x)

def fact(n):
    f = 1
    for i in range(1,n+1):
        f = f * i
    return f
x = 10
x =fact(x)
print(x)

def fib(n):
    a = 0
    b = 1
    print(a)
    print(b)
    for i in range(2,n):
        c = a + b
        a = b
        b = c
        print(c)
fib(15)

def fact(n):
    if n==0:
        return 1
    return n* fact(n-1)

x=fact(5)
print(x)


def fact(n):
    if n==0:
        return 1
    return n * fact(n-1)
x = fact(10)
print(x)


def sqrt(a):
    return a*a
x=sqrt(100)
print(x)

def divide(a,b):
    return a//b
x=divide(100,5)
print(x)

def divide(a,b):
    return a-b
x=divide(100,5)
print(x)

x = lambda a,b:a+b
y = x(10,10)
print(y)

f = lambda a,b: a+b
x =f("malli","arjun")
print(x)

f = lambda a,b : a + b
x = f("mallik","arjun")
print(x[5])

def update(n):
    return n+2
x = update(10)
print(x)

num = [10,20,30,40,50,60,65,23,15,16,14,18,19,12]

even = list(filter(lambda n:n%2==0,num))
print(even)
print(len(even))

countries = ["USA","CANADA","INDIA","RUSSIA","CHINA","SRI LANKA","PAKISTAN","BRAZIL","AGENTINA","CUBA","UK","NORWAY","PORTUGAL"]

finding_A =list(filter(lambda a: "R" in a,countries))
print(finding_A)

def filt(countries):
    if "R" in countries:
        return countries
x =filter(filt,countries)
x = list(x)
print(x)

finding_Letter_A =list(filter(lambda a : a.startswith("I"),countries))
print(finding_Letter_A)

finding_Letter_multi = list(filter(lambda a: a.startswith("U") or a.startswith("I"),countries))
print(finding_Letter_multi)

num = [10,20,39,40,50,61,65,23,15,16,14,18,19,12,161,171]
evens = list(filter(lambda n: n%2 == 0,num ))
odds =list(filter(lambda n : n%2!=0,num))
print(evens)
print(odds)
sqrteven = list(map(lambda n: n*n,evens))
sqrtodd = list(map(lambda n: n*n,odds))
print(sqrteven)
print(sqrtodd)
doubleeven = list(map(lambda n: n*2,evens))
doubleodd= list(map(lambda n: n*3,odds))
print(doubleeven)
print(doubleodd)

def fact(n):
    if n == 0:
        return 1
    return n *fact(n-1)
x =fact(5)
print(x)

def fib(n):
    a = 1
    b = 2
    print(a)
    print(b)
    for n in range(3,n):
        c = a + b
        a=b
        b=c
        print(c)
fib(100)



def fib(n):
    a = 0
    b = 1
    print(a)
    print(b)
    while True:
        c = a + b
        if c > 100:
            break
        print(c)
        a = b
        b = c

fib(100)

x=filter(find,countries)
x = list(x)
print(x)

i=0
while True:
    if i%3 ==0:
        break
    print(i)
    i=i+1
a= [20,15,16]
b =a.copy()
print(b)
print(a)

print(id(a))
print(id(b))

L = ["a","b","c","d"]
res = "mallik".join(L)
print(res)

L = ["a","b","c","d"]
res = "mallik".join(L)
print(res)


def fib(n):
    a = 0
    b = 1
    print(a)
    print(b)
    for i in range(2,n):
        c = a + b
        a = b
        b = c
        print(c)
fib(15)

def fact(n):
    if n==0:
        return 1
    return n* fact(n-1)

x=fact(5)
print(x)

def fib(n):
    a = 0
    b = 1
    print(a)
    print(b)
    for i in range(2,n):
        c = a + b
        a = b
        b = c
        print(c)
fib(15)

def fib(n):
    a = 0
    b = 1
    print(a)
    print(b)
    while True:
        c = a + b
        if c > 100:
            break
        print(c)
        a = b
        b = c
fib(100)


def fib(n):
    a = 0
    b = 1
    print(a)
    print(b)
    while True:
        c = a + b
        if c > 100:
            break
        print(c)
        a = b
        b = c

fib(100)

def fact(n):
    if n==0:
        return 1
    return n * fact(n-1)
x = fact(5)
print(x)

countries = ["MA","NJ","NY","CT","RI","VR","MR","CA","TX","OR","NC","SC"]
def finding(countries):
    if "M" and "R" in countries:
        return countries

x = filter(finding,countries)
x = list(x)
print(x)

finding_words = list(filter(lambda a: a.startswith ("M"),countries))
print(finding_words)

find_words = list(filter(lambda a: a.startswith ("M") and a.endswith ("R"),countries))
print(find_words)
numbers = [100,250,275,300,315,330,345,360,375,400,410,425,438]
evens = list(filter(lambda a: a%2 == 0,numbers))
print(evens)
odds = list(filter(lambda a: a%2!= 0,numbers))
print(odds)
for i in range (1,20000):
    if i%2==0:
        print(i)
for i in range (1,20000):
    if i %2!= 0:
        print(i)
sqrt = list(map(lambda a: a*a,numbers))
print(sqrt)




c =filter(find,countries)
c = list(c)
print(c)



def fun1():
    add()
    print("mallikarjun")

def fun2():
    print("chikatimalla")

fun1()
fun2()

def main():
    fun1()
    fun2()
main()

class computer:
    def find(self):
        print("i7,16gb,1tb")
    def wrongfind(self):
        print("mallikarjun")
x = computer()
y = computer()

computer.find(x)
computer.wrongfind(x)

class person:
    def __init__(self,name,age):
        self.name = name
        self.age = age

p1 = person("Mallik", 26)

print(p1.name)
print(p1.age)

class computers():
    def __init__(self,cpu,ram):
        self.cpu = cpu
        self.ram = ram

    def config(self):
        print("config is ",self.cpu,self.ram)

x = computers("LG","JELLY")
y = computers("lenova","sandwitch")

x.config()
y.config()

print(x.cpu)
print(x.ram)

class Address:
    def find(self):
        print("I will get job by 02/15/24")
x = Address
Address.find(x)

class Demographic:
    def __init__(self,Name,Age,city,State):
        self.Name = Name
        self.Age = Age
        self.city = city
        self.State = State

    def details(self):
        print("my name",self.Name,"and my age is",self.Age,".I lives in",self.city,"And State is",self.State)

x = Demographic("Mallikarjun",26,"Fitchburg","MA")
x.details()

class masters:
    def __init__(self,college,state):
        self.college = college
        self.state = state
    def impletment(self):
        print("my university name is ",self.college,"and its located in",self.state)
x = masters("Fitchburg","MA")
x.impletment()

class demographic():
    def __init__(self,name,age,city):
        self.name = name
        self.age  = age
        self.city = city
    def deatils(self):
        print("My name is",self.name,"and my age is",self.age,"and i located in",self.city)
x = demographic("Mallikarjun",26,"fitchburg")
x.deatils()

a = "MAallikarjun"
b = "arjun"
a = b
print(a)
print(b)
print(id(a))
print(id(b))

class computer():
    def __init__(self):
        self.name = "Mallikarjun"
        self.age  = 26
x = computer()

print(x.name)
print(x.age)

class car():
    def __init__(self):
        self.mile = 18
        self.car ="Jeep"
x = car()
y = car()

x.mile = 24

print(x.mile,x.car)
print(y.mile,y.car)
class student:

    school = "FSU"

    def __init__(self,m1,m2,m3):
        self.m1 = m1
        self.m2 = m2
        self.m3 = m3
    def avg(self):
        return (self.m1 +self.m2 +self.m3)/3
    @classmethod
    def getschool(cls):
        return cls.school
    @staticmethod
    def info():
        print("This is student class")

x = student(10,20,3)
y = student(45,65,8)

print(y.avg())
print(x.avg(),x.school)
print(x.m1,x.m2,x.m3)
print(student.getschool())
student.info ()

class A:
    def feature1(self):
        print("This is my world")
    def feature2(self):
        print("This is another world")
class B(A):
    def feature3(self):
        print("This is another town")
    def feature4(self):
        print("This is another universe")
class C(B):
    def feature5(self):
        print("This is another town")
    def feature6(self):
        print("This is another universe")
al = A()

bl = B()
cl = C()

al.feature1()
al.feature2()


class C:
    def __int__(self):
        print("Messaging")
    def function1(self):
        print("Hi")
    def function2(self):
        print("Hee")

class D(C):
    def __int__(self):
        super().__int__()
        print("Message")
    def function3(self):
        print("hello")
    def function4(self):
        print("how")

d1 = D()
d1.__int__()

class C:
    def __init__(self):
        print("Messaging")

    def function1(self):

        print("Hi")
    def function2(self):
        print("Hee")

class D:
    def __init__(self):
        print("Message")

    def function3(self):
        print("hello")

    def function4(self):
        print("how")

class E(C,D):
    def __init__(self):
        super().__init__( )
        print("Texted")

    def feat(self):
        super().function3()

e1 = E()
e1.feat()
class Person:
    def __int__(self):
        print("My Name is Mallikarjun")
    def City(self):
        print("I lives in USA")
    def State(self):
        print("Mass is part of USA")

class Education:
    def __init__(self):
        print("I stuided in Fitchburg")
    def Unit(self):
        print("Its university")

class Data(Person,Education):
    def __init__(self):
        super().__init__()
        print("That is my information")
    def fact(self):
        super().State()
x = Data()
x.fact()

class pycharm:

    def execute(self):
        print("spell check")
        print("convenction check")
class editor:

    def execute(self):
        print("mallik")
        print("arjun")
        print("spell check")
        print("convention check")
class laptop:

    def code(self,ide):
        ide.execute()

ide = editor()
x = laptop()
x.code(ide)

countries = ["MA","NJ","NMY","CMT","RI","VMR","MR","CMA","TX","OR","NC","SC"]
def finding(countries):
    if "M" in countries:
        return countries
def find(countries):
    return countries.startwith("M")
x = filter(finding,countries)
x = list(x)
print(x)
x = list(filter(lambda a: "M" in a,countries))
print(x)
y = list(filter(lambda a: a.startswith ("M"),countries))
print(y)
a = 10
b = 25
print(int.__add__(a,b))

c = "10"
d = "Malik"
print(str.__add__(c,d))


class person:
    def __init__(self,name,age):
        self.name = name
        self.age  = age

x = person('Mallik',26)
print(x.name)
print(x.age)


class A:
    def function_1(self):
        print("My Name is Mallikarjun")
    def function_2(self):
        print("I lives in USA")
class B:
    def __init__(self):
        print("Messing")
    def function_3(self):
        print("Now I moved to Texas")
    def function_4(self):
        print("Its st.jonhs st")
class C(A,B):
    def __init__(self):
        super().__init__()
        print("Hrllo")
    def function_5(self):
        print("Laptop")

x = C()
x.function_4()
x.function_3()

class demographic():
    def __init__(self,m1,m2,m3):
        self.m1  = m1
        self.m2  = m2
        self.m3  = m3
    def details(self):
        print("my name is",self.m1,"and I am lives in",self.m2,"i came to",self.m3)
x = demographic("Mallik","fitchburg","usa")
x.details()
class pycharm:
    def execute(self):
        print("spell check")
        print("convenction check")
class editor:
    def execute(self):
        print("mallik")
        print("arjun")
        print("spell check")
        print("convention check")
class laptop:
    def code(self,ide):
        ide.execute()
ide = editor()
x = laptop()
x.code(ide)
class person:
    def details(self):
        print("My name is Mallikarjun")
class issued:
    def detalied(self,ide):
        ide.details()
ide = person()
x = issued()
x.detalied(ide)

class person():
    def demographic(self):
        print("My name is Mallikarjun")
        print("I lives in USA")
class demo():
    def exhausted(self,det):
        det.demographic()
det = person()
x = demo()
x.exhausted(det)

a = "MALLIKARJUN"
b = "322"
print(str.__add__(a,b))

c = ["MALLIKARJUN"]
d = ["322"]
print("".join(c+d))
print("--".join(c+d))

class students:
    def addings(self,a=None,b=None,c=None):

        s = 0
        if a!= None and b!= None and c!= None:
            s = a+b+c
        elif a!= None and b!= None:
            s = a+b
        else:
            s = a
        return s
s1 = students()
print(s1.addings(10,10,100))
class Meth():
    def adds(self,a=None,b=None,c=None):
        s = 0
        if a!=None and b!=None and c==None:
            s = a+b+c
        elif a!=None and b!=None:
            s = a*b
        else:
            s = a
        return s
s2 = Meth()
print(s2.adds(10,2,0))

from abc import ABC,abstractmethod
class computer(ABC):
    @abstractmethod
    def process(self):
        pass
class Laptop(computer):
    def process(self):
        print("Hi")
com1 = Laptop()
com1.process()

nums = ['Mallikarjun','M','a','l','l','i','k','a','r','j','u','n']

x = iter(nums)

print(next(x))
print(next(x))
print(next(x))
print(next(x))
print(next(x))
print(next(x))
print(x.__next__())
print(x.__next__())
print(x.__next__())
print(x.__next__())

class Topten:
    def __init__(self):
        self.num = 1
    def __iter__(self):
        return self
    def __next__(self):

        if self.num <= 10:
            val =self.num
            self.num += 1
            return val
        else:
            raise StopIteration
values = Topten()

print(next(values))

for i in values:
    print(i)
def topten():
    yield 1
    yield 2
    yield 3
    yield 4
values = topten()
print(values.__next__())
print(values.__next__())

for i in values:
    print(i)

def sqarueoften():
    n = 1
    while n <=12:
        sq = n * n
        yield sq
        n +=1
x = sqarueoften()

for i in x:
    print(i)
def laptop():
    n = 1
    while n <= 15:
        yield n
        n += 1

val  = laptop()

for i in val:
    print(i)
i = 1
while i <=10:
    print(i,"Mallik")
    i = i +1
def numbering():
    n = 1
    while n <= 15:
        sq = n * n
        yield sq
        n +=1
s = numbering()
for i in s:
    print(i)
a = 5
b = 2
try:
    print(a/b)
except Exception:
    x = a * a
    print(x)
a = 5
b = 0
if a!= 0:
    print('True')
else:
    print('False')

a = 10
b = 0
try:
    print("Hello")
    print(a/b)
except Exception:
    print("Hello world")
finally:
    print("done")
from time import sleep
from threading import *
class Hello(Thread):
    def run(self):
        for i in range(5):
            print("Hello")
            sleep(1)
class Hi(Thread):
    def run(self):
        for i in range(5):
            print("hi")
            sleep(1)
t1 = Hello()
t2 =Hi()
t1.start()
sleep(0.2)
t2.start()

from threading import *
from time import sleep

class Parct(Thread):
    def run(self):
        for i in range(10):
            print("Hello Mallikarjun")
            sleep(1)
class Pract(Thread):
    def run(self):
        for i in range(10):
            print("Yes")
            sleep(1)
t1 = Parct()
t2 = Pract()
t1.start()
sleep(0.1)
t2.start()
num  = [1,2,3,5,7,8,9,6,4,2,9,7,2,8,7,2,9,1]
x = list(filter(lambda a:a ==9 ,num))
print(x)
##linear search
pos = -1
def search(num,n):
    i = 0
    while i< len(num):
        if num[i] == n:
            globals()['pos'] = i
            return True
        i = i+1
    return False
num  = [5,8,4,6,9,2]
n = 2
if search(num, n):
    print("True",pos)
else:
    print("False")
pos =-1
def find(list,n):
    i = 0
    while i < len(list):
        if list[i] == n:
            globals()['pos'] = i
            return True
        i = i+1
    return False
list = [2,5,8,9]
n = 2
if find(list,n):
    print("True",pos)
else:
    print("False")

def find(countries,n):
    i = 0
    while i < len(countries):
        if countries[i] == n:
            return True
        i = i+1
    return False

countries = ["Mount","kiki","pinkki"]
n = "kiki"
if find(countries,n):
    print("True")
else:
    print("False")
pos = -1
def find(countries,n):
    i = 0
    while i <len(countries):
        if countries[i] == n:
            globals()['pos'] = i
            return True
        i = i+1
    return False
countries = ["Mount","kiki","pinkki"]
n = "kiki"
if find(countries,n):
    print("True",pos)
else:
    print("False")
pos = -1
def find(countries,n):
    i = 0
    for i in range(len(countries)):
        if countries[i] == n:
            globals()['pos'] = i
            return True
        i = i+1
    return False
countries = ["Mount","kiki","pinkki"]
n = "kiki"
if find(countries,n):
    print("True",pos)
else:
    print("False")

#Multi-Threading
from threading import *
from time import sleep

class details(Thread):
    def run(self):
        for i in range(5):
            print("My Name is Mallikarjun")
            sleep(1)

class bio(Thread):
    def run(self):
        for i in range(5):
            print("I lives in USA")
            sleep(1)
x1 =details()
x2 = bio()

x1.start()
sleep(0.1)
x2.start()
pos = -1
def find(x,y):
    i = 0
    while i <len(x):
        if x[i] == y:
            globals()["pos"] = i
            return True
        i = i+1
    return False
x = ['Mallikarjun','Chikatimalla',2,'Data','Engineer',5,6]
y = 'Mallikarjun'
if find(x,y):
    print("True",pos)
else:
    print("False")
def find_all(x, y):
    positions = []
    for i in range(len(x)):
        if x[i] == y:
            positions.append(i)
    return positions

x = ['Mallikarjun', 'Chikatimalla', 2, 'Data', 'Engineer', 5, 6, 2, 3, 2]
y = 2

positions = find_all(x, y)
if positions:
    print("True, positions:", positions)
else:
    print("False")

def find(list,n):
    l = 0
    u =len(list)-1

    while l <= u:
        mid = (l+u) // 2
        if list[mid] == n:
            globals()['pos'] = mid
            return True
        else:
            if list[mid] < n:
                l = mid+1
            else:
                u = mid-1

list = [2,50,45,68,95,23,48,49]
n = 95
if find(list,n):
    print("True")
else:
    print("False")

#Binary search

def find(x,n):
    l = 0
    u = len(x)-1

    while l<= u:
        mid = (l+u)//2

        if x[mid] == n:
            return mid
        elif x[mid] < n:
            l =mid +1
        else:
            u = mid-1
    return -1

x = [10,25,6,7,8,3,45]
n = 9
if find(x,n)!=-1:
    print("True")
else:
    print("False")
def find(x,n):
    l = 0
    u =len(x)-1

    while l <= u:
        mid = (l+u)//2

        if x[mid] == n:
            return mid
        elif x[mid] < n:
            l = mid+1
        else:
            u =mid-1
    return -1
x = [10,25,6,7,8,3,45]
n = 25
if find(x,n) !=-1:
    print("True")
else:
    print("False")

def find(x,n):
    l = 0
    u = len(x)-1

    while l <= u:
        mid = (l+u) // 2
        if x[mid] == n:
            return True
        else:
            if x[mid] < n:
                l =mid+1
            else:
                u =mid -1
    return False
x = [22,35,48,96,75,62]
n = 47
if find(x,n):
    print("True")
else:
    print("False")

pos = 1
def find(x,n):
    l = 0
    u = len(x)-1
    while l <= u:
        mid = (l+u) // 2
        if x[mid] == n:
            globals()['pos']= mid
            return True
        elif x[mid] < n:
            l =mid+1
        else:
            u =mid-1
    return False

x = [1,2,3,4,5,6,7,8,9,10]
n = 3
if find(x,n):
    print("True",pos)
else:
    print("False")
def change(nums):
    for i in range(len(nums)-1,0,-1):
        for j in range(i):
            if nums[j]>nums[j+1]:
                temp = nums[j]
                nums[j] =nums[j+1]
                nums[j+1] = temp
nums = [10,30,20,25,58]
change(nums)
print(nums)

def change(nums):
    for i in range(len(nums)-1,0,-1):
        for j in range(i):
            if nums[j] > nums[j+1]:
                temp = nums[j]
                nums[j]=nums[j+1]
                nums[j+1]=temp
nums = [10,30,20,25,58]
change(nums)
print(nums)













