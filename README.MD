- [ref](https://github.com/athlony2k/deployment-example)

For the purposes of the demo, I prepared the environment with the following:
- app-pipeline project
	- 2 GCS buckets for the dev and prod state files
	- 2 service accounts with the permissions necessary in their target environment
	- connected this repo to cloudbuild
	- 2 CloudBuild triggers. One for each branch

- target-dev project
	- 1 service account for the demo that has no permissions (we'll use this to assign the storage.admin permission)

- target-prod project
	- 1 service account for the demo that has no permissions (we'll use this to assign the storage.admin permission)
