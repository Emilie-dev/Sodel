#!/bin/bash


rm public/uploads
rm public/vendor/crudbooster
ln -s ../storage/app public/uploads
ln -s ../../vendor/crocodicstudio/crudbooster/src/commands/../assets/ public/vendor/crudbooster





