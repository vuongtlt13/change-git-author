# change-git-author
Change git author using .mailmap file

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
