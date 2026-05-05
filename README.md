<<<<<<< HEAD
# TEHIK FHIR Implementation Guide starter
  
Starter (template) project for creating new FHIR Implementation Guides (IG) in TEHIK-EE group.

IG is published to: 
- https://github.tehik.ee/ig-ee-starter/
- https://build.fhir.org/ig/TEHIK-EE/ig-ee-starter/

Check out [index](input/pagecontent/index.md) on how to start working with this IG.

## Building locally
- For Linux/unix systems use shell script `docker-build.sh` to build the IG. Only OCI container management tool is required to run the build script, i.e docker.
- For Windows systems use `docker-build.bat` to build the IG. You docker desktop installed on your PC: https://www.docker.com/products/docker-desktop/.

When build is successful, a static site is generated in the output folder. Open `output/index.html` in your browser to see it.

## Publishing
IG is automatically built and published on every commit to the repository. There are two ways to publish the IG:

### Via GitHub Pages
Requirements:
- [ghbuild.yml](.github/workflows/ghbuild.yml) file is present in the repository.
- GitHub Pages is enabled for the repository, with the source set to the `gh-pages` branch.

Using GitHub Actions, the static site is automatically published to the `https://github.tehik.ee/<project-id>` site.
Branches will be published to `https://github.tehik.ee/<project-id>/branches/<branch-name>` site. 

### Via FHIR auto-build
Requirements: https://github.com/FHIR/auto-ig-builder/blob/master/README.md 

Using FHIR auto-build, the static site is automatically published to the `https://build.fhir.org/ig/TEHIK-EE/<project-id>` site.
=======
# ig-ee-vris
FHIR implementation guide for infertility treatment information system
>>>>>>> 8ab460502c8023a8c0ac765c854fc8b8133c0698
