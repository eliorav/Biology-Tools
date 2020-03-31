<p align="center">
  <h3 align="center">hg38db</h3>

  <p align="center">
    A Docker wrapper for hg38db.
  </p>
</p>

# Getting Started

## Usage example
### pull from docker
```sh
docker pull avelior/hg38db
```
#### run query
```sh
docker run --rm -it -e QUERY={YOUR_QUERY} avelior/hg38db
```
##### Example
```sh
docker run --rm -it -e QUERY='select chrom,chromStart,chromEnd,name,alleles,alleleFreqs from snp150 where name in ("rs2088175","rs2983855")' hg38db
```

#### run query and save the output in a csv file
```sh
docker run --rm -it -e QUERY={YOUR_QUERY} -e FILE_NAME={YOUR_FILE_NAME} -v {YOUR_FOLDER}://usr/src/app/share_folder avelior/hg38db
```
note that the container needs a volume to the share_folder inside the workdir in order to get files and write back.

##### Example
```sh
docker run --rm -it -e QUERY='select chrom,chromStart,chromEnd,name,alleles,alleleFreqs from snp150 where name in ("rs2088175","rs2983855")' -e FILE_NAME="output" -v {YOUR_FOLDER}://usr/src/app/share_folder hg38db
```

## Contact
Elior Avraham – elior.av@gmail.com