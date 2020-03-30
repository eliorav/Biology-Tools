<p align="center">
  <h3 align="center">Plink2</h3>

  <p align="center">
    A Docker wrapper for <a href="https://www.cog-genomics.org/plink/2.0/">plink2</a>.
  </p>
</p>

# Getting Started

## Usage example
### pull from docker
```sh
docker pull avelior/plink2
```
#### run plink command
```sh
docker run --rm -it -v {YOUR_FOLDER}://usr/src/app/share_folder avelior/plink2 {PLINK_COMMAND}
```
note that the container needs a volume to the share_folder inside the workdir in order to get files and write back.
##### Example
```sh
docker run --rm -it -v ./://usr/src/app/share_folder avelior/plink2 bash -c "./plink2 --zst-decompress share_folder/all_phase3.pgen.zst > share_folder/all_phase3.pgen"
```

## Contact
Elior Avraham – elior.av@gmail.com

