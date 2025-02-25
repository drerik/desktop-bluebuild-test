# BlueBuild desktop test &nbsp; [![bluebuild build badge](https://github.com/drerik/desktop-bluebuild-test/actions/workflows/build.yml/badge.svg)](https://github.com/drerik/desktop-bluebuild-test/actions/workflows/build.yml)

Testing out bluebuild to create a fedora desktop environment.

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for more information.



## Installation

> **Warning**  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/drerik/sway-desktop:latest
  ```

- Alternative: Rebase to a unsigned image:
  ```bash
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/drerik/sway-desktop-rl:latest
  ```

- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/blue-build/template
```
