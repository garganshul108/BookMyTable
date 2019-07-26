# LOG / Guidelines

#### 2019-07-26 17:48:13
Since everyone had same ideas so I combined them to the same place
Now one can append the Ideas in the same file as follows

1. Pull the master branch (containing the idea.md file)
2. Append the new changes to the end of file
3. Add your name to it
 ```shell
 Sumit Added
   1. User
       - Review
       - Rating
 ```
4. git add -> commit -> push

#### 2019-07-26 17:55:08
Someone who wants to work on the some branch that's already created

1. pull the branch to the local repo
2. switch to the branch
3. make changes
4. git add -> commit -> push

#### 2019-07-26 17:57:59
For every new feature

1. create a seprate branch on local repo
2. make an initial commit to the branch
3. push it back to the REMOTE repo
```shell
on local repo
 - git checkout -b branch_name (feature); create the branch and switch to it
 - git add .
 - git commit -m "initial commit"
 - git push origin branch_name; this makes brach availabe to others also 
```
4. make the changes
5. git add -> commit -> push branch_name

#### 2019-07-26 18:02:54
For a branch to be a sub-branch of a branch

1. switch to the parent branch
2. then create the sub-branch

```shell
git checkout parent
git checkout -b child
```
Another way

1. switch to the parent branch
2. then create the sub-branch and specify parent also; safer than above

```shell
git checkout parent_name
git checkout -b child_name parent_name
```

#### 2019-07-26 18:07:19
Want to work on the some branch/feature

1. pull the branch to the local repo
2. switch to the branch
3. make a child/sub-branch out of the target branch
4. work there
5. git add -> commit -> push your_branch
    it will get automatically added to the parent branch
6. then merge can be done