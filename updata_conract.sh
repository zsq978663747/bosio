#!/bin/bash


cleos -u http://127.0.0.1:7777 set contract eosio build/eosio.system  -p eosio
cleos -u http://127.0.0.1:7777 set contract eosio.wrap build/eosio.wrap  -p eosio.wrap
cleos -u http://127.0.0.1:7777 set contract eosio.token  build/eosio.token  -p eosio.token 
cleos -u http://127.0.0.1:7777 set contract eosio.msig  build/eosio.msig  -p eosio.msig
