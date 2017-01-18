# Web Servers

## UNIX Philosophy

As documented by [Doug Mcllroy](https://en.wikipedia.org/wiki/Douglas_McIlroy) in the The Bell System Technical Journal from 1978:

> 1. Make each program do one thing well. To do a new job, build afresh rather than complicate old programs by adding new "features".
> 2. Expect the output of every program to become the input to another, as yet unknown, program. Don't clutter output with extraneous information. Avoid stringently columnar or binary input formats. Don't insist on interactive input.
> 3. Design and build software, even operating systems, to be tried early, ideally within weeks. Don't hesitate to throw away the clumsy parts and rebuild them.
> 4. Use tools in preference to unskilled help to lighten a programming task, even if you have to detour to build the tools and expect to throw some of them out after you've finished using them.

Linux is a UNIX-like computer operating system assembled under the model of free and open-source software development and distribution. The defining component of Linux is the Linux kernel, an operating system kernel first released on September 17, 1991 by Linus Torvalds. 

With Linux, small is beautiful. Each of the commands in this program is fairly small, and each performs a specific task. The sort command, for example does only one thing. It sorts the data stream sent to it via Standard Input and sends the results to Standard Output. It can perform numeric, alphabetic and alphanumeric sorts in forward and reverse order. But it does nothing else. It only sorts but it is very, very good at that. Because it is very small, having only 2614 lines of code, it is also very fast.

Here is a quick command line program as an example that encompasses the major tenets of Linux philosophy.

```who | awk '{print $1}' | sort | uniq```

This little command line program performs the very simple task of listing all users who are currently logged in while only listing each logged in user once. It also eliminates extraneous data provided by the who command.

GNU/Linux gives us the free and open tools that enable us to perform incredibly complex and creative tasks, many of which cannot be performed with any other tools. Many of these small, “do one thing well” utilities are designed so that they can be strung together in ways that could never be imagined by the programmers of large utilities. In fact, the programmers of these GNU Utilities themselves had no idea of the virtually infinite combinations in which they could be combined to perform tasks they could not imagine. Yet these utilities that are over 40 years old are still in heavy daily use on computers around the world.

## VPS

A Virtual Personal Server (VPS) is a server that is running on a virtual machine. A VPS runs its own copy of an operating system, and customers may have superuser-level access to that operating system instance, so they can install almost any software that runs on that OS. For many purposes they are functionally equivalent to a dedicated physical server, and being software-defined, are able to be much more easily created and configured. They are priced much lower than an equivalent physical server, but as they share the underlying physical hardware with other VPSs, performance may be lower, and may depend on the workload of other instances on the same hardware node. One advantage of such a server is its portability. You can run a virtual machine from anywhere, and it is easy to destroy and recreate.

## Root User

On Linux, the Root user is equivalent to the Administrator user on Windows. However, while Windows has long had a culture of average users logging in as Administrator, you shouldn’t log in as root on Linux.

When you log in as your own user account, programs you run are restricted from writing to the rest of the system – they can only write to your home folder. You can’t modify system files without gaining root permissions. This helps keep your computer secure. For example, if the Firefox browser had a security hole and you were running it as root, a malicious web page would be able to write to all files on your system, read files in other user account’s home folders, and replace system commands with compromised ones. In contrast, if you’re logged in as a limited user account, the malicious web page wouldn’t be able to do any of those things – it would only be able to inflict damage in your home folder. While this could still cause problems, it’s much better than having your entire system compromised.

This also helps protect you against malicious or just plain buggy applications. For example, if you run an application that decides to delete all files it has access to (perhaps it contains a nasty bug), the application will wipe out your home folder. If that application had root access, it could delete every single file on your hard drive, necessitating a full reinstall.