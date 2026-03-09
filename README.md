# Dotfiles Repo
This is a public repo of all my dotfiles, feel free to steal whatever you like for your own rices :)

This rice is a work in progress and under active development, especially in its current state, you should not expect anything to be finalised or polished in any way.

## The stack
My rice uses i3 as a window manager, eww for a sidebar, picom for compositing shadows, blur, transparency, etc, and zsh with oh-my-zsh for my shell and shell configurations.

The eww sidebar is not complete, im working on widgets one at a time. At the time of writing this, we only have a volume and a battery indicator.

## Usage
Honestly, I made this repo mainly to make use of gits version controls, rather than to be a proper repo to be seen by others.
Therefore, this code may not be well documented, and some features might require dependencies that arent included or mentioned in my codebase.
I apologise for this... However, if you are struggling to implement anything, please feel free to reach out to me and I will help as much as I can :)

I've also made an effort to keep customisation options seperate from the implementaion as global variables, so if you want to edit anything it should be easy.

### Dependencies
- jq 

## Performance
In terms of this rice's optimisation, I haven't gone crazy making it super efficient.
But the laptop im using is a thinkpad yoga 11e from 2016, with a 2.2 GHz Celeron N3450 and 3 gbs of ram and it can run multiple tabs in firefox without having to use the swap.
So unless your laptop/pc is a real piece of junk it should run fine :)

## Future development
A list of tasks i've yet to implement:
- volume slider react to hardware volume buttons
- spotify indicator (I have a fun idea for the implementation...)
- clock widget
- volume and battery exact values below widgets
