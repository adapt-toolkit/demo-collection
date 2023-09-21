# ADAPT Demo Collection

Welcome to the `demo-collection` repository, a curated set of public demos showcasing the capabilities of ADAPT.

## Current Release: `release-0.1`

## Switching Between Releases

To switch between different release versions, you can use the provided `configure.sh` script:

1. To install the default (latest) release version, run:
   ```bash
   ./configure.sh
   ```

2. To list all available release versions, run:
    ```bash
    ./configure.sh --list
    ```

3. To install a specific release version (e.g., release-0.1), run:
    ```bash
    ./configure.sh release-0.1
    ```

The latest release will be marked as (default) in the list. When switching between releases, the script ensures that the demos match the state of the selected release.

### Available Demos

| Path | Description |
|---   |---          |
| [basic-messenger-demo](./basic-messenger-demo/) | Basic implementation of P2P messaging |


## Running the Demos

To run a specific demo, navigate to its directory and consult its `README.md` for detailed instructions:

```bash
cd <path_to_demo> && cat README.md
```


## Licensing

This project abides by the MIT License. Consult the `LICENSE` file for detailed information.
