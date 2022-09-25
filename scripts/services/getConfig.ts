// To utilize the default config system built, this file is required. It defines the *structure* of the configuration file. These structured options display as changeable UI elements within the "Config" section of the service details page in the Embassy UI.

import { compat, types as T } from "../deps.ts";

export const getConfig: T.ExpectedExports.getConfig = compat.getConfig({
  "expiry-buffer": {
    "type": "string",
    "name": "Invoice Expiry Buffer",
    "description": "Time elapsed before the LN Invoice expires",
    "nullable": false,
    "default": "600"
  },
  "fee-base-msat": {
      "type": "string",
      "name": "Base Fee (msats)",
      "description": "Routing Base Fee to be collected in msats",
      "default": "1000",
      "nullable": false
  },
  "fee-ppm": {
      "type": "string",
      "name": "Fee Rate",
      "description": "Routing Fee Rate to be collected in msats/million",
      "default": "6000",
      "nullable": false
  }
});
