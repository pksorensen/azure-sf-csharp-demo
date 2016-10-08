#!/bin/bash

azure servicefabric application package copy azure-sf-csharp fabric:ImageStore
azure servicefabric application type register azure-sf-csharp
azure servicefabric application create fabric:/azure-sf-csharp  azure-sf-csharpType 1.0.0


