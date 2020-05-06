<p align="center">
  <h3 align="center">SAMtools</h3>

  <p align="center">
    A Docker wrapper for <a href="http://www.htslib.org/">SAMtools</a>.
  </p>
</p>

# Getting Started

## Usage example
### pull from docker
```sh
docker pull avelior/SAMtools
```
#### run plink command
```sh
docker run --rm -it -v {YOUR_FOLDER}://usr/src/app/share_folder avelior/SAMtools {SAMTOOLS_COMMAND}
```
note that the container needs a volume to the share_folder inside the workdir in order to get files and write back.
##### Example
```sh
docker run --rm -it -v ./://usr/src/app/share_folder avelior/SAMtools bash -c "samtools merge share_folder/finalBamFile.bam share_folder/*.bam"
```

## Contact
Elior Avraham – elior.av@gmail.com

