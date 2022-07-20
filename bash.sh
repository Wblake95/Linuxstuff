#! /usr/bin/env bash

echo "Hello! What is your name?"
read name
if [ $name ]; then
	echo "Hello, $name! I hope you are doing well"
else
	echo "I couldn't hear you!"
fi
