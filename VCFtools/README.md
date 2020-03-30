<p align="center">
  <h3 align="center">VCFtools</h3>

  <p align="center">
    A Docker wrapper for <a href="https://vcftools.github.io/index.html">VCFtools</a>.
  </p>
</p>

# Getting Started
[frequently used tools.](https://manpages.debian.org/testing/vcftools/index.html)

## Usage example
### pull from docker
```sh
docker pull avelior/vcftools
```
#### run vcftools command
```sh
docker run --rm -v {YOUR_FOLDER}://usr/src/app/share_folder avelior/vcftools {VCFTOOLS_COMMAND}
```
note that the container needs a volume to the share_folder inside the workdir in order to get files and write back.
##### Example
source [1000G](https://www.internationalgenome.org/faq/how-can-i-get-allele-frequency-my-variant/)
```sh
docker run --rm -it -v ./://usr/src/app/share_folder avelior/vcftools bash -c "vcf-subset -c CEU.samples.list ALL.chr13.integrated_phase1_v3.20101123.snps_indels_svs.genotypes.vcf.gz"
```

## Contact
Elior Avraham – elior.av@gmail.com

