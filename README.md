# change-git-author
Change git author using .mailmap file

## Requirements:
   - `git-filter-repo`
       
         python3 -m pip install --user git-filter-repo
   

## Steps:
1. Change mailmap file
2. Run scripts `change-git.sh` in a repository folder


## Note: Must enable push force for the target branch

## Format mailmap file

```
<new-email> <old-email>
NewName <new-email> OldName <old-email>
```

For example:
```
<abc@gmail.com> <abc1@yahoo.vn>
<abc@gmail.com> <abC@gmail.com>
```
