# mac-scripts
Various scripts for Mac machines

## Scripts

#### change-host-name.sh
Sets host name. Takes one parameter which is new host name.

`./change-host-name.sh "NewHostName"`

#### cleanup-system.sh
Cleans temporary files. Mostly for Xcode/JavaScript developers.

#### get-provisioning-profile-uuid.sh
Prints UUID of specificied provisioning profile. Useful for iOS/Mac development.

`./get-provisioning-profile-uuid.sh "/path/to/profile/profile.mobileprovision"`

#### setup-system.sh
Basic configuration of macOS.

#### update-all-git-repos.sh
Does `git pull` for every git repo in working directory.