#!/usr/bin/env fish

if [ (setxkbmap -query | grep layout | awk '{ print $2 }') = 'us' ]
	setxkbmap -layout it
else
	setxkbmap -layout us
end

