# telepresence-robot

A project to build a telepresence robot for the Berkshire County Technology
Group's meetings, as a way of enabling members to be present at meetings even
when they cannot physically attend. (Really it's just a fun project that
combines multiple interesting problems).

This repo will eventually contain:

- Diagrams for constructing a telepresence robot
- An installation script for bootstrapping a Raspberry Pi
- A brain for the robot that transmits the video feed
- A web server that receives the video feed and enables remote control of the
  robot

## Requirements:

For the bootstrap scripts:
- ruby (with Rubygems and Bundler)
- bish (https://github.com/tdenniston/bish)
