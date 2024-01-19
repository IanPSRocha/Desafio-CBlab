# Coco Bambu

## Background

The response for a given ERP API endpoint for a given store from a restaurant is in the file `ERP.json``.

This sample corresponds to a given check with a single order, referring to a single asset menuItem.

## Tasks

1. Describe the JSON schema corresponding to the sample

2. Context:
   
    In the provided sample, the __detailLines__ object contains a __menuItem__. It could also be instances of:
   * discount
   * serviceCharge
   * tenderMedia
   * errorCode

    Transcrive the JSON into SQL tables. The implementation must make sence to restaurant operations.

3. Describe the chosen approach in detail. Justify the choice.

## Advice

* Sketch before you start
* Consider that this task encompasses the whole restaurant chain
* Make sure you include at least one row per asset
* We expect to see code which you would be happy to put in production
* Do not hesitate to ask for clarification of just make an assumption and go with it
