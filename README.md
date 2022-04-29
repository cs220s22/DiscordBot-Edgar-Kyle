# DiscordBot-Edgar-Kyle
DevOps Final Project

Authors: Kyle Adams, Edgar Perez

## Overview 
 - Our project was to launch a Discord bot using Python. 

## Local Setup 
- Add the Discord Token to the .env file with the name DISCORD_TOKEN.
>> nano .env
>> DISCORD_TOKEN=<token>
- Install the requirements listed in requirements.txt
>> pip3 install -r requirements.txt
- Run the program using python3
>> python3 bot.py

## Docker Setup
- Open the Docker Desktop app
- Run the "up" file
>> ./up
- To end the Docker container, run the "down" file 
>> ./down

## AWS Setup
- Start a new EC2 Instance
- Select a key pair and a security group
- In "User Data" of the Advanced Details tab, copy and paste the following:

	#!/bin/bash
	sudo yum update
	sudo yum install -y git
	git clone https://github.com/cs220s22/DiscordBot-Edgar-Kyle.git
	cd DiscordBot-Edgar-Kyle
	python3 -m venv .venv
	.venv/bin/pip install -r requirements.txt
	touch .env
	echo "DISCORD_TOKEN=<insert token>" > .env
	sudo .venv/bin/python3 bot.py

- Launch instance

## Technologies Used 
Discord: https://discord.com/developers/docs/intro
Docker: https://www.docker.com
AWS EC2: https://us-east-1.console.aws.amazon.com/ec2/v2/home?region=us-east-1#Home:

## Background 
"How to Make a Discord Bot in Python" by Alex Ronquillo: https://realpython.com/how-to-make-a-discord-bot-python/
