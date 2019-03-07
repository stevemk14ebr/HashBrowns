# HashBrowns
C++ BCrypt Library, using OpenWall's library

This uses OpenWall's BCrypt Lib: https://www.openwall.com/crypt/

The salt generator for that is then fed a 64 byte buffer of random data generated using the worlds smallest/fastest cryptographically secure pseudo random number generator ISAAC: https://burtleburtle.net/bob/rand/isaacafa.html. To seed ISAAC a small one line bit hack is used: https://blog.demofox.org/2013/07/07/a-super-tiny-random-number-generator/ , which is seeded on time. Idea being do it fast, and use more algos incase something has a flaw.

Eventually this will expose and API + a branch that is setup for AWS.
