# QNAP Media System Configuration

## Containers Used

## Required Apps

## QNAP Folder Setup
Server uses two storage pools, one is composed of SSDs and intended for application usage, such as a Plex server with its SQLite database, while the other is composed of HDDs and is intended for archival usage, such as media content or backups.  Shares are split between pools as described below:

- SSD Pool
| Share | Comments |
| /share/Container | Configured automatically when Container Station is installed. |
| /share/Container/{radarr|sonarr|lidarr|sabnzbd|plex} - Configuration data for the various components
| /share/Download - A specific directory used for content download.
| /share/Download/sabnzbd/completed/{movies|series|music}
| /share/Download/sabnzbd/incomplete
- HDD Pool
| /share/Media | User created media share, used for movies, TV, music, etc. |
| /share/Media/{movies|series|music} | Specific types of media content.  I use additional subdirectories below this to separate content further which change over time. |
| /share/Backup/{radarr|sonarr|lidarr|sabnzbd|plex} | Application backup becuase things ALWAYS go wrong at some point. |

The "Download" share is placed on the SSD pool to improve unpack/repair performance and reduce interference with content playback from the "Media" share.  Moving files across filesystems is not optimal but is justified in this case.

Other notes on shares:
- Disable "Network Recycle Bin" on all shares, especially the Media share.  Large changes due to rsync operations, such as changing the file naming format in Radarr, can cause the share to fill up as files are moved to the Recycle Bin.  Configure *arr apps to move files into s new directory on change for backups.
- Avoid NFS shares, use CIFS only.  

## User Accounts

## Backup Strategy

# ToDo:

- [ ] Add Watchtower container for automatic upgrades
- [ ] Think about Docker Swarm implementation
- [ ] Think about GlusterFS over iSCSI/NFS with Docker Swarm
- [ ] Think about Traefik
- [ ] Think about 
- [ ] Think about GitLab
- [ ] Think about secrets management

References:
[Install QNAP Club Repo](https://www.qnapclub.eu/en/howto/1)
[TRaSH Guides](https://trash-guides.info/)
