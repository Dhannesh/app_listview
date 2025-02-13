# Introducing the ListView Widget

The ListView displays a list of items, and the main thing is the ListView sets up scrolling for you automatically, so you can scroll and view the items in the list which do not fit on the screen. You can think of the ListView as a scrollable list of widgets arranged linearly. ListView is the most commonly used scrolling widget. It displays its children one after the other in the scroll direction that you have specified.

You can see that this reference is a StatelessWidget called MyListView, and MyListView is something that I have defined here in this file. MyListView extends the StatelessWidget base class. It's a widget with no mutable state.

A ListView can have any number of children and it displays this children by default as a vertical scrolling list. This EdgeInsets constructor allows you to specify padding in pixels on the left, top, right, and bottom, that is LTRB. Every child of this ListView is a simple Text element. I have a total of five Text widgets.

Its content is Bread and Dairy and it has a certain TextStyle. It has a fontSize of 32 and a fontWeight of bold, and every other element within this ListView is a Text element with different text but the same style. I'm going to go ahead and run this code so that we can view this list of Text widgets within our app. And here is what the list looks like. Now, this looks like a very simple list. This is something you could have achieved with a column widget. I'm going to try and scroll on this list and you'll find that, well, it doesn't scroll. Well, that's because we don't have enough elements to overflow the screen. The ListView is within the body of the scaffold and that takes up the entire dimensions of the screen. I'm now going to wrap this ListView within a container with a fixed height.

So, I right-click on the ListView, Show Context Actions Wrap with widget. So, I'm going to Wrap with the Container widget. Now, a Container will also fill up the screen space of the scaffold unless you explicitly set its height and width. I've set the height of the container to be 150 along with a little bit of padding. Once the app reloads, the entire list cannot be seen. You'll have to scroll to see the remaining items. We have a small container within which the list is embedded, so you can see that scrolling just works for a ListView. You didn't have to do anything special to get it to work.

I'm now going to update the code that I have here on screen to improve the look and feel of this ListView. I want a list of text elements, but I want them to be displayed within colored boxes. I still return a ListView from the build method. 

I've set the container background to be a certain color. Alignment.center will center the child of the container, which is a Text object with the text Breakfast and Dairy. Every list item here is a container with a certain background color and some embedded text representing different shopping categories. I'm going to run this app and you can see the contents of our list. Again, the list does not overflow the screen, so there will be no scroll available. 

Now, I'm going to set up a helper method that will allow me to create a container element that will be part of a list. This will allow me to create as many containers as I want for the different shopping categories. I'm going to primarily change the code in the MyListView StatelessWidget. So, I'm going to get rid of my current MyListView and I'm going to add an import statement for the dart:math library. I'll be using that library for random color generation. I'm going to paste in the code for the new ListView that allows us to create as many containers as we want to be elements in our list.

These items are categories that I want to be elements in the list that I create. These items are used as stand-in for shopping categories in my Insta store app. I've defined the createContainers method, which just takes in a list of strings and creates container elements to display those strings with different colored backgrounds.

The createContainers helper method allows me to eliminate the boilerplate code that I had for the different elements of the list. I'll just define the code once and I can create multiple list elements with that code. I've instantiated the Text widget that displays the string that is part of the list of strings I've passed in. Now, the rest of the code should be familiar to you. I'm going to go ahead and run this app, and since we've populated the list with a large number of containers, you can see them nicely displayed, all with different colors. You can scroll down and see how scrolling works. When a ListView scrolls vertically, the elements of the ListView expand to fill up all of the horizontal space available, and the height of each element in the ListView depends on the content that you've stored in there.

Now, with a single property scrollDirection, you can have your ListView scroll horizontally. 

and you can see that I have a horizontally scrolling ListView. I'm going to now scroll horizontally and show you the contents. Observe that every ListView element expands to fill up the vertical space in a horizontally scrolled ListView, and the width of each element depends on the size of the content that you have within the ListView. Every element here is of a different width because the length of the text within each element is different. Now, in this horizontally scrolling ListView, I'm going to specify a height and the width for each Container element. The list items that make up the ListView.

For a horizontally scrolling list, you'll find that the width property of the list item applies to the list elements. That is, every element here has a width of 150 pixels, but the height property is entirely ignored. You can see that the height of these elements expand to fill up the entire vertical space. Now, let me just change the scrollDirection of this list. Instead of horizontal, I'm going to set it to vertical. That is the default scrollDirection. On reload take a look at the elements of the list.

The height property has been applied to every element of this list. The width property is totally ignored. The width of every element expands to fill the space available. However, the height property is adhered to. Each element here has a height of 200 pixels.

I'm going to have our list items that is the list elements include an image as well as text. That will definitely improve the look and feel of our ListView. I still have the MyListView class and the body property of my MyStore StatelessWidget is set to MyListView. If you look at the build method, you'll find that it's rather short. Well, that's because we've refactored the code a little bit. The children of the ListView widget are generated using a list of products. We'll look at the exact structure of these objects in just a bit. The List.generate function that I invoke here is used to generate a list of widgets, a single widget representing each product. Every widget is a ListItem and you can see a ListItem instantiated. A ListItem is a custom widget that I have created here in this same file and it takes in a single product as an input argument. So in short, this ListView displays a list of ListItem widgets. Every ListItem is a UI widget used to represent a single product, and a Product is defined by the class. Every Product has an image reference and a subtitle. Now, if you take a look at the inset picture, you'll see what an individual list item has been structured to look like. We have an image, and right under the image, we have the subtitle for that image. The images and the subtitles are both placed within a container with different colored backgrounds. Let's turn our attention to the ListItem code that allows us to structure our list items in this manner. Within the build method. you can see that I set the color property of the Container using the method getRandomColor, which generates a color at random. The child of this container is a centered widget, which then contains a Column.

The fit property set to BoxFit.fill causes the image to fill up the entire space of the parent. This may distort the original aspect ratio of the image. The SizedBox adds a little space separator between the image and the subtitle and the Text widget references product. 

## ListTile Widget
Now, that you've had some basic experience with the ListView, it's time to introduce you to the ListTile widget. This widget is a part of the Flutter SDK. I've updated the code here. The only change is to the MyListView class, so I'm going to scroll down and show you what I have changed. Just a heads up that this ListView no longer displays a list of products. Instead, I just have the names of some pages that you might have in your app. Observe that the children of the ListView set on line 31 are all ListTile widgets.

[Video description begins] Line 30 reads as: return ListView(. Line 31 reads as: children: const <Widget>[. [Video description ends]

You can see one instance of the ListTile on lines 32 through 38. A ListTile is a built-in Flutter widget which is a single fixed height row

[Video description begins] Line 32 reads as: ListTile(. Line 33 reads as: leading: Icon(Icons.man),. Line 34 reads as: title: Text('My Profile',. Line 35 reads as: style: TextStyle(. Line 36 reads as: fontSize: 18,. Line 37 reads as: fontWeight: FontWeight.bold)), // TextStyle, Text. Line 38 reads as:), // ListTile. [Video description ends]

that typically contains some text as well as a leading or trailing icon. This first ListTile has a leading Icon set on line 33.

This references an Icon of a man. Then we have the title within that ListTile which is some Text which says My Profile with an associated TextStyle. If you scroll down and view the other children of this ListView, you can see that every list element has been defined using a ListTile with a leading Icon and some Text. Now, I'm going to go ahead and run this code and you can see what the resulting list looks like. The ListTile is a very useful widget for setting up list items, every item here as a leading icon and some text. You can choose to have a trailing icon as well if you want to. Let's say you want a nice fine line separating every element of your ListView. You can use the ListTile.divideTiles constructor to set up your ListTiles within your ListView. Observe my invocation of ListTile.divideTile on line 31.

This is what I use to set the children of MyListView.

[Video description begins] Line 31 reads as: children: ListTile.divideTiles(. [Video description ends]

The divideTiles constructor for ListTile takes in a context as an input argument that's on line 32,

[Video description begins] Line 32 reads as: context: context,. [Video description ends]

and then on line 33, I set the tiles property. This is just the list of tiles that I want displayed within MyListView.

[Video description begins] Line 33 reads as: tiles: const <ListTile>[. [Video description ends]

This is the same list of tiles that we saw earlier. My Profile, Past Orders, Account settings, and so on. Once your app is reloaded, you'll find a fine line separating your list elements and if you zoom in, you'll be able to see this separator much more clearly. It's hard to see in the zoomed-out form. So, if you want a separator to separate the ListTiles you have within your ListView, use the ListTile.divideTiles constructor. I'll now update my code and go back to a ListView that uses ListTiles, but this time I'll have my ListTile have a trailing Icon as well.

Let's take a look at how I've set up a single ListTile. Take a look at the code on lines 32 through 39.

[Video description begins] Line 32 reads as: ListTile(. Line 33 reads as: leading: Icon(Icons.man),. Line 34 reads as: title: Text('My Profile',. Line 35 reads as: style: TextStyle(. Line 36 reads as: fontSize: 18,. Line 37 reads as: fontWeight: FontWeight.bold)), // TextStyle, Text. Line 38 reads as: trailing: Icon(Icons.keyboard_arrow_right),. Line 39 reads as:), // ListTile. [Video description ends]

Observe that this ListTile has a leading property that is an Icon of a man. Then I have a Text property that is assigned to the title of this ListTile. This is on lines 34 through 37 and then on line 38, I have a trailing Icon for every ListTile. This trailing Icon is just the keyboard_arrow_right. So, really, the only change that I've made to all of these ListTiles is I've added the same trailing icon, keyboard_arrow_right. Reload the app, and let's take a look at what the resulting list looks like. Observe that every item in this list has a leading Icon and a trailing Icon that is just the right arrow. This is what you would use to indicate that you can click on this list and then navigate to another page.

We haven't come to navigation yet, we'll get to that shortly. Now, instead of using icons for the leading and trailing property, you can specify those to be images as well. And that's exactly what I've done here in this update. Once again, let's take a look at one instance of a ListTile on lines 32 through 41.

[Video description begins] Line 32 reads as: ListTile(. Line 33 reads as: leading: CircleAvatar(. Line 34 reads as: backgroundImage: AssetImage('images/profile.jpg'),. Line 35 reads as: ), // CircleAvatar. Line 36 reads as: title: Text('My Profile',. line 37 reads as: style: TextStyle(. Line 38 reads as: fontSize: 18,. Line 39 reads as: fontWeight: FontWeight.bold)), // TextStyle, Text. Line 40 reads as: trailing: Icon(Icons.keyboard_arrow_right),. Line 41 reads as:), // ListTile. [Video description ends]

Observe the leading property on line 33, I've set that to a CircleAvatar with a background image that is images/profile.jpg. The CircleAvatar will display the image in a nice circular widget. The title and trailing properties remain the same. If we scroll down and look at all of these ListTiles, the main change I've made is that the leading property have all been assigned nice CircleAvatars.

Once I reload this app and zoom in, you'll see that every list item has a leading CircleAvatar with a nice image that represents what exactly that list item means. I'm going to update the code one last time to show you one last property available on a ListTile. Take a look at the ListTile on lines 32 through 42. Now, we've seen the leading property that is the CircleAvatar. All our previous ListTiles had the title that is a Text widget. Observe on line 40, I've added another property, the subtitle.

[Video description begins] Line 40 now reads as: subtitle: Text('Edit your profile'),. [Video description ends]

The subtitle is always present in a smaller font under the title in a ListTile. Once again, I have the trailing Icon. I've made the same change to every ListTile that makes up this ListView. I've added a new subtitle property. Let's reload our app and there you see it, our list looks so much better now. Every list item has a leading avatar with an image. It has a title, a subtitle, and of course, a trailing Icon, the right arrow.
