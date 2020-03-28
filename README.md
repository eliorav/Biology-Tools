<p align="center">
  <h3 align="center">Plink2</h3>

  <p align="center">
    A Docker wrapper for plink2.
  </p>
</p>

## Getting Started

### Usage example
#### clone the repo
```sh
git clone https://github.com/eliorav/plink.git
```

#### build the image
```sh
docker build -t plink_image .
```

#### run plink command
```sh
docker run --rm -it -v {YOUR_FOLDER}://usr/src/app/share_folder plink_image {PLINK_COMMAND}
```
note that the container needs a volume to the share_folder inside the workdir in order to get files and write back.
##### Example
```sh
docker run --rm -it -v ./://usr/src/app/share_folder plink_image bash -c "./plink2 --zst-decompress share_folder/all_phase3.pgen.zst > share_folder/all_phase3.pgen"
```

## Contact
Elior Avraham – elior.av@gmail.com

