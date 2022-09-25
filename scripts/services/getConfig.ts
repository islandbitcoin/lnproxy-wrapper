// To utilize the default config system built, this file is required. It defines the *structure* of the configuration file. These structured options display as changeable UI elements within the "Config" section of the service details page in the Embassy UI.

import { compat, types as T } from "../deps.ts";

export const getConfig: T.ExpectedExports.getConfig = compat.getConfig({
  "lnurlp-comment-allowed": {
    "type": "string",
    "name": "LNURL-pay Comment Length",
    "description": "Allowed length of LNURL-pay comments, maximum characters is 2000",
    "nullable": false,
    "default": "210"
  },
  "request-limit": {
      "type": "string",
      "name": "Request Limit",
      "description": "Limit the allowed requests per second",
      "default": "5",
      "nullable": false
  }
});
