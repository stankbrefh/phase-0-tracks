# Git Definitions

Define each of the following Git concepts.

***

* What is version control?  Why is it useful?
Version control manages changes to source code over time. It allows us to view the entire history of revisions to one or more files, and merge revisions made by different people. If a mistake is made, developers can turn back the clock and compare earlier versions of the code to help fix the mistake while minimizing disruption to team members.

* What is a branch and why would you use one? 
A branch represents an independent line of development. The default branch name in Git is master. When making changes to the code (adding features, fixing bugs, et cetera), it is important to encapsulate these changes on a new branch. This ensures that unstable code is never committed to the main code base, and it allows for the chance to clean up the feature's history before merging it into the main branch.

* What is a commit? What makes a good commit message?
Save points in Git are called commits and these commits are made by the user through the command line. A commit has a unique ID, a message, an author, and a timestamp. The commit message is very  important. Since Git allows for the crafting of commits locally in order to share them later, it is important to write multiple commits of logically separate changes so that your work can be more easily peer reviewed. A good message is one that makes it easier for others to see what you are doing and why.

* What is a merge conflict?
A merge conflict occurs when two branches have changed the same part of the same file, and then those branches are merged together. When Git merges the other branch into your current branch, it looks at the differences between the base commit and the current revision, and at the differences between the base commit and the other branch's latest commit. The merge conflict occurs when there are disagreeing changes. When this occurs, Git adds conflict markers to the affected areas. 