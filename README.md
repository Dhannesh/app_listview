# Introducing the ListView Widget

The ListView displays a list of items, and the main thing is the ListView sets up scrolling for you automatically, so you can scroll and view the items in the list which do not fit on the screen. You can think of the ListView as a scrollable list of widgets arranged linearly. ListView is the most commonly used scrolling widget. It displays its children one after the other in the scroll direction that you have specified.

You can see that this reference is a StatelessWidget called MyListView, and MyListView is something that I have defined here in this file. MyListView extends the StatelessWidget base class. It's a widget with no mutable state.

A ListView can have any number of children and it displays this children by default as a vertical scrolling list. This EdgeInsets constructor allows you to specify padding in pixels on the left, top, right, and bottom, that is LTRB. Every child of this ListView is a simple Text element. I have a total of five Text widgets.

Its content is Bread and Dairy and it has a certain TextStyle. It has a fontSize of 32 and a fontWeight of bold, and every other element within this ListView is a Text element with different text but the same style. I'm going to go ahead and run this code so that we can view this list of Text widgets within our app. And here is what the list looks like. Now, this looks like a very simple list. This is something you could have achieved with a column widget. I'm going to try and scroll on this list and you'll find that, well, it doesn't scroll. Well, that's because we don't have enough elements to overflow the screen. The ListView is within the body of the scaffold and that takes up the entire dimensions of the screen. I'm now going to wrap this ListView within a container with a fixed height.

So, I right-click on the ListView, Show Context Actions Wrap with widget. So, I'm going to Wrap with the Container widget. Now, a Container will also fill up the screen space of the scaffold unless you explicitly set its height and width. I've set the height of the container to be 150 along with a little bit of padding. Once the app reloads, the entire list cannot be seen. You'll have to scroll to see the remaining items. We have a small container within which the list is embedded, so you can see that scrolling just works for a ListView. You didn't have to do anything special to get it to work.

I'm now going to update the code that I have here on screen to improve the look and feel of this ListView. I want a list of text elements, but I want them to be displayed within colored boxes.

I'm going to get rid of this const property for the ListView because I do not have a const constructor. The main change I have made is to the code within the MyListView widget. So, let's take a look at the build method. I still return a ListView from the build method. You can see that on line 30, the children of the ListView are what's different. Let's take a look at the first child, defined on lines 33 through 41, and that'll give you the structure of the remaining children as well. This is a Container widget.

[Video description begins] Line 33 reads as: container(. Line 34 reads as: padding: constEdgeInsets.all(20),. Line 35 reads as: color: Colors.yellowAccent[100],.Line 36 reads as: alignment: Alignment.center,. Line 37 reads as: child: const Text('Breakfast and Diary',. Line 38 reads as: style: TextStyle(. Line 39 reads as: fontSize: 18,. Line 40 reads as: fontWeight: FontWeight.bold)), // TextStyle, Text. Line 41 reads as:), // Container. [Video description ends]

I've set the container background to be a certain color. You can see the property on line 35. Alignment.center will center the child of the container, which is a Text object with the text Breakfast and Dairy. Every list item here is a container with a certain background color and some embedded text representing different shopping categories.

I'm going to run this app and you can see the contents of our list. Again, the list does not overflow the screen, so there will be no scroll available. Now, I'm going to set up a helper method that will allow me to create a container element that will be part of a list. This will allow me to create as many containers as I want for the different shopping categories. I'm going to primarily change the code in the MyListView StatelessWidget. So, I'm going to get rid of my current MyListView and I'm going to add an import statement for the dart:math library. I'll be using that library for random color generation. I'm going to paste in the code for the new ListView

[Video description begins] Line 2 reads as: import 'dart:math';. [Video description ends]

that allows us to create as many containers as we want to be elements in our list.

Here is the MyListView StatelessWidget defined on line 25

[Video description begins] Line 25 reads as: class MyListView extends StatelessWidget{. Line 27 reads as: const MyListView({Key? key}) : super(key: key);. Line 29 reads as: @override. Line 30 reads as: Widget build(BuildContext context) {. [Video description ends]

within the build method on lines 31 through 43, I've defined a list of items.

[Video description begins] Line 31 reads as: var items = [. Line 32 reads as: "Breakfast",. Line 33 reads as: "Dairy",. Line 34 reads as: "Vegetables",. Line 35 reads as: "Fruits",. Line 36 reads as: "Snacks",. Line 37 reads as: "Bread",. Line 38 reads as: "Desserts",. Line 39 reads as: "Home Care",. Line 40 reads as: "Personal Care",. Line 41 reads as: "Pet Care",. Line 42 reads as: "Kitchen",. Line 43 reads as: ];. [Video description ends]

These items are categories that I want to be elements in the list that I create. These items are used as stand-in for shopping categories in my Insta store app. Now, I'm going to scroll down a little further and on line 45, you see that I create containers using this list of items as elements. On line 45, I have a list called containers which is just a list of widgets that will make up the elements of my ListView.

[Video description begins] Line 45 reads as: List<Widget> containers =[];.
[Video description ends]

I then use containers.addAll on lines 46, 47, and 48 to add the widgets that I create using the createContainers method.

[Video description begins] Line 46 reads as: containers.addAll(createContainers(items));. Line 47 reads as: containers.addAll(createContainers(items));. Line 48 reads as: containers.addAll(createContainers(items));. [Video description ends]

I've defined the createContainers method on line 57, which just takes in a list of strings and creates container elements to display those strings with different colored backgrounds.

We'll look at that in a bit.

[Video description begins] Line 57 reads as: List<Widget> createContainers(List<String> items){. [Video description ends]

On lines 50 through 53, I instantiate a ListView widget and I set the children of the ListView widget to the containers that I have created and populated.

[Video description begins] Line 50 reads as: return ListView(. Line 51 reads as: padding: constEdgeInsets.all(8),. Line 52 reads as: children: containers,. Line 53 reads as: ); // ListView. [Video description ends]

The createContainers helper method allows me to eliminate the boilerplate code that I had for the different elements of the list. I'll just define the code once and I can create multiple list elements with that code. Now, let's take a look at this createContainers helper method. On line 59, I have a Random number generator

[Video description begins] Line 59 reads as: Random random = Random();. [Video description ends]

and on line 60, I have a list of container widgets.

[Video description begins] Line 60 reads as: List<Widget> Containers =[];. [Video description ends]

I run a for loop through every string item passed in. This is on line 62, and for each string in the input list,

[Video description begins] Line 62 reads as: for(var item in items){. [Video description ends]

I instantiate a Container widget. The code for this is on line 63 through 74.

[Video description begins] Line 63 reads as: containers.add(Container(. Line 64 reads as: padding: constEdgeInsets.all(20),. Line 65 reads as: color: Color.fromARGB(random.nextInt(255),. Line 66 reads as: random.nextInt(255),. Line 67 reads as: . random.nextInt(255),. Line 68 reads as: random.nextInt(255)), // Color.fromARGB. Line 69 reads as: alignment: Alignment.center,. Line 70 reads as: child: const Text(item,. Line 71 reads as: style: const TextStyle(. Line 72 reads as: fontSize:18,. Line 73 reads as: fontWeight: FontWeight.bold)), //TextStyle, Text. Line 74 reads as: )); //Container. [Video description ends]

On lines 65 through 68, I generate a random color in order to color the background of the container that I've created. This will allow me to have containers of different colors, it'll looked pretty in our ListView. On lines 70 through 73, I've instantiated the Text widget that displays the string that is part of the list of strings I've passed in. Now, the rest of the code should be familiar to you. I'm going to go ahead and run this app, and since we've populated the list with a large number of containers, you can see them nicely displayed, all with different colors. You can scroll down and see how scrolling works. When a ListView scrolls vertically, the elements of the ListView expand to fill up all of the horizontal space available, and the height of each element in the ListView depends on the content that you've stored in there.

Now, with a single property scrollDirection, you can have your ListView scroll horizontally. On line 52, where I instantiate the ListView, I now have the ListView scroll in the horizontal direction. I'll just save and wait for my app to reload

[Video description begins] Line 52 reads as: scrollDirection: Axis.horizontal,. [Video description ends]

and you can see that I have a horizontally scrolling ListView. I'm going to now scroll horizontally and show you the contents. Observe that every ListView element expands to fill up the vertical space in a horizontally scrolled ListView, and the width of each element depends on the size of the content that you have within the ListView. Every element here is of a different width because the length of the text within each element is different. Now, in this horizontally scrolling ListView, I'm going to specify a height and the width for each Container element. The list items that make up the ListView.

On lines 66 and 67, I have width 150, height 200.

[Video description begins] Line 66 reads as: width: 150,. Line 67 reads as: height: 200,. [Video description ends]

For a horizontally scrolling list, you'll find that the width property of the list item applies to the list elements. That is, every element here has a width of 150 pixels, but the height property is entirely ignored. You can see that the height of these elements expand to fill up the entire vertical space. Now, let me just change the scrollDirection of this list. Instead of horizontal, I'm going to set it to vertical. That is the default scrollDirection. On reload take a look at the elements of the list.

[Video description begins] Line 52 reads as: scrollDirection: Axis.vertical,. [Video description ends]

The height property has been applied to every element of this list. The width property is totally ignored. The width of every element expands to fill the space available. However, the height property is adhered to. Each element here has a height of 200 pixels.

## Getting Started

