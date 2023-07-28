# Utilities
A compilation of useful snippets for use on Brenner.

## NCI Scripts
The scripts located in [Backups/](Backups/) are for backing up your files as an archive on NCI.

- [archiveDir.sge](Backups/archiveDir.sge): This script is just a qsub job for compressing a directory into a tar.gz file. 
- [upload2NCI.sge](Backups/upload2NCI.sge): This script is designed for very large datasets (up to 1TB) and compresses a directory on scratch before it is transferred to NCI. It creates a qsub job that allocates scratch disk to compress the data. Make sure you update the login details with your NCI username and you have SSH keys set up. This script creates an MD5 checksum prior to the transfer to NCI, and peforms an MD5 check once it is on NCI to ensure the integrity of the file.
- [uploadLarge2NCI.sge](Backups/uploadLarge2NCI.sge): This script creates an MD5 file of a large file, before it goes to NCI. This is ideal for very large files like zipped files.
- [verifyBackup.sge](Backups/verifyBackup.sge): This script verifies the integrity of a file on NCI by running the checksum created prior to the transfer.

