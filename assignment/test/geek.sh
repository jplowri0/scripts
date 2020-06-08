#!/bin/bash

sed -e '{
N
s/\n/ @ /
}' thegeekstuff.txt