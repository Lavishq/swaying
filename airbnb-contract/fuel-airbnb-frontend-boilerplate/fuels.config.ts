import { createConfig } from 'fuels';

export default createConfig({
  contracts: ['../airbnb-contract'],
  output: './src/contracts',
});

/**
 * Check the docs:
 * https://fuellabs.github.io/fuels-ts/guide/cli/config-file
 */
