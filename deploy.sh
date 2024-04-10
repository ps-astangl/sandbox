#! /bin/bash

cd build/ && zip -r cds-hooks-sandbox.zip . -x "*node_modules/.cache*" "*cds-hooks-sandbox/.git*" "*src*" "*tests*" "*.git %% mv  cds-hooks-sandbox.zip && ../
az webapp deployment source config-zip --resource-group aj-dev-rg --name crisp-cds-hooks --src cds-hooks-sandbox.zip