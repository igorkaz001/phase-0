##1.5 Tracking Changes Reflections

-How does tracking and adding changes make developers' lives easier?
It keeps thier progress on a project organized, allows for collaboration on the same piece of code, and prevents someone from accidentaly deleteing/breaking the project.

-What is a commit?
Commit is a process of sending or even saving changes to local git repository that were previously "added". 

-What are the best practices for commit messages?
Best practice is to use imperative form of verbs. It is customary to write a short summary on top of about 50 chars and write the commit message which can go longer than 50 chars.

-What does the HEAD^ argument mean?
it refers to changes made in the previous commit.

-What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 stages are add, commit, push. First the file is added to the staging area with 'git add' command. Then the changed file is commited to local repository with 'git commit' command. Lastly the changed file is pushed up to the remote repository with 'git push' command.

-Write a handy cheatsheet of the commands you need to commit your changes?
git add file-name
git commit -m "commit message"
git push origin branch-name

-What is a pull request and how do you create and merge one?
A pull request is used to make sure the local repo is exactly the same as the remote repo. pull request can be initiated on github site, which will then allow you to compare the files in the different branches and let you merge the changes to the master branch. Then git pull command is used in the terminal to pull the newly merged branch from remote repo to the local one. 

-Why are pull requests preferred when working with teams?
The only reason I can think of is for individual team members to start thier work on a project with files that have been merged with master branch. Otherwise they may run into erros after they do thier work and try to merge it to thier remote repo. 