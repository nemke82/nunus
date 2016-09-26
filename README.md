# nunus
Effective Stress test and Benchmark tool with Chart.

Nunus is lightweight stress test and benchmark tool designed for anyone who wishes to test (examine) capacity of their Website. 

It is based on three tools.
1) Siege tool (https://github.com/JoeDog/siege) <BR>
2) Apache Benchmark (https://httpd.apache.org/docs/2.4/programs/ab.html) <BR>
3) Gnuplot (http://gnuplot.info/) <BR>

Siege is an open source regression test and benchmark utility. It can stress test a single URL with a user defined number of simulated users, or it can read many URLs into memory and stress them simultaneously. The program reports the total number of hits recorded, bytes transferred, response time, concurrency, and return status. Siege supports HTTP/1.0 and 1.1 protocols, the GET and POST directives, cookies, transaction logging, and basic authentication. Its features are configurable on a per user basis.

ab is a tool for benchmarking your Apache Hypertext Transfer Protocol (HTTP) server. It is designed to give you an impression of how your current Apache installation performs. This especially shows you how many requests per second your Apache installation is capable of serving. This tool also works effectively with Nginx.

Gnuplot is a portable command-line driven graphing utility for Linux, OS/2, MS Windows, OSX, VMS, and many other platforms. The source code is copyrighted but freely distributed (i.e., you don't have to pay for it). It was originally created to allow scientists and students to visualize mathematical functions and data interactively, but has grown to support many non-interactive uses such as web scripting. It is also used as a plotting engine by third-party applications like Octave. Gnuplot has been supported and under active development since 1986.

#How to use Nunus tool?

First clone it on your server by executing: <BR>
git clone https://github.com/nemke82/nunus

Next type: bash nunus.sh
Help will be prompted, repeat command with desired command.
