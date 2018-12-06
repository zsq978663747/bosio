# step 3: prepare wallet
#cleos wallet create
#cleos wallet import <eosio-private-key>

# step 4: set contract eosio.bios
CONTRACTS_FOLDER='/root/bostest-zsq/bos/build/contracts/'
cleos -u http://127.0.0.1:7777  set contract eosio ${CONTRACTS_FOLDER}/eosio.bios -p eosio

# step 5: create system accounts
for account in eosio.bpay eosio.msig eosio.names eosio.ram eosio.ramfee eosio.saving eosio.stake eosio.token eosio.vpay eosio.wrap
do
  echo -e "\n creating $account \n";
  cleos -u http://127.0.0.1:7777  create account eosio ${account} EOS7Hr3xbzFzKK1PYEaAq1fvi3nzizfhh8XLhwvkpdt8Zvp1b6e9c;
  sleep 1;
done

# step 6: set contract
cleos -u http://127.0.0.1:7777  set contract eosio.token ${CONTRACTS_FOLDER}/eosio.token -p eosio.token
cleos -u http://127.0.0.1:7777  set contract eosio.msig ${CONTRACTS_FOLDER}/eosio.msig -p eosio.msig

# step 7: create and issue token
cleos -u http://127.0.0.1:7777 push action eosio.token create '["eosio", "10000000000.0000 BOS"]' -p eosio.token
cleos -u http://127.0.0.1:7777 push action eosio.token issue '["eosio",  "1000000000.0000 BOS", "bos"]' -p eosio

# setp 8: setting privileged account for eosio.msig
cleos -u http://127.0.0.1:7777 push action eosio setpriv '{"account": "eosio.msig", "is_priv": 1}' -p eosio

# step 9: set contract eosio.system
cleos -u http://127.0.0.1:7777 set contract eosio ${CONTRACTS_FOLDER}/eosio.system  -p eosio

# step 10: create some account
#cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 SYS" --stake-cpu "10.0000 SYS" --buy-ram "10.0000 SYS"  eosio boscorebos11 EOS7hjYGvhRF99czdXE5acUPjnWoKebpxebgRZqXxPUSxmT1K9q97 EOS5zhvmicLyPRvvY1a5TbYj1aNfqbMmd1ezgknWLrbR87fMnpnwo
#cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 SYS" --stake-cpu "10.0000 SYS" --buy-ram "10.0000 SYS"  eosio boscorebos12 EOS84H324q8mu2oS1BwDcWXKJDpNgCiDauYgcVpRcYEzXxvfNvifa EOS6oAKmx9cMhvfdZ4pacWhvPuFjd6n6JgF886xmKFY85Gdkw2rik
#cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 SYS" --stake-cpu "10.0000 SYS" --buy-ram "10.0000 SYS"  eosio boscorebos13 EOS7enNAQLxT8biyNM39nApGYJrcS59TQY9dPBBeyZn1A4Ai9ouCk EOS4wc7dsUsWS4L4QDMpJBhUqaqx6f4ZU7tSrGunGWYUAiSWygjtr
#cleos system newaccount --stake-net "10.0000 EOS" --stake-cpu "10.0000 EOS" --buy-ram "10.0000 EOS"  eosio eosasia11111 EOS5a5qPLuRqJgbCv1xvLUpKst4NVnhWL3kLaPQ4MeBC1GVr2ikb8 EOS5a5qPLuRqJgbCv1xvLUpKst4NVnhWL3kLaPQ4MeBC1GVr2ikb8
#cleos system newaccount --stake-net "10.0000 EOS" --stake-cpu "10.0000 EOS" --buy-ram "10.0000 EOS"  eosio eosstorebest EOS5F3xZaNRhDLzKRGgu5npxKQdFNBTeoSVhdyNz8WFiVXAoCmTcW EOS6GkvvJNM43iN61a4qZjLtm41c6KSW3ggJYpt8Q7CWfCyqBZ7Je
#cleos system newaccount --stake-net "10.0000 EOS" --stake-cpu "10.0000 EOS" --buy-ram "10.0000 EOS"  eosio eoslaomaocom EOS8hNCsEiEQzYiZY8uVxJiWGqD38VoDUNuVfS648spsftAJA87Z1 EOS8hNCsEiEQzYiZY8uVxJiWGqD38VoDUNuVfS648spsftAJA87Z1
#cleos system newaccount --stake-net "10.0000 EOS" --stake-cpu "10.0000 EOS" --buy-ram "10.0000 EOS"  eosio eoshuobipool EOS4xfwXh5DmXWdCJv3HFm7cnCYUGabE3itoabZBYwedNDKwA2YQU EOS4vRtWyVQezZG5tjXYNJigaaxx17ym5vR21cBG2mAuKJWBGHU1S

# --  faucet accounts -- 
#cleos system newaccount --stake-net "10.0000 EOS" --stake-cpu "10.0000 EOS" --buy-ram "10.0000 EOS"  eosio eosfaucet111 EOS8CjwFmPtGzhZEST7NTSNfoAULHTVHfrBdVJQxeSD2b3XMFHbZs EOS8TRdivFvDSVZcVPHoyMPrSmn2BajKZYoAt9af37RcWDGkntz1c
#cleos system newaccount --stake-net "10.0000 EOS" --stake-cpu "10.0000 EOS" --buy-ram "10.0000 EOS"  eosio eosio.faucet EOS6ZdSYBZtvZ9E3KKBbgMo75Tj787H6Cn5F5QvEGZ9A7GJzFkK6n EOS6fqxxdiuvRR8y6LdfAjKoPLVuVuHHz2wHoTqB3mVBhQQqgonef

# step 11: transfer
#cleos  -u http://127.0.0.1:7777 transfer  eosio  boscorebos11  "100000000.0000 SYS"
#cleos -u http://127.0.0.1:7777  transfer  eosio  boscorebos12  "100000000.0000 SYS"
#cleos -u http://127.0.0.1:7777  transfer  eosio  boscorebos13  "100000000.0000 SYS"
#cleos  transfer  eosio  eosasia11111  "100000000.0000 EOS"
#cleos  transfer  eosio  eosstorebest  "100000000.0000 EOS"
#cleos  transfer  eosio  eoslaomaocom  "100000000.0000 EOS"
#cleos  transfer  eosio  eoshuobipool  "100000000.0000 EOS"


# step 12: transfer all eosio balance to faucet account and activate the network
#cleos  transfer  eosio  eosfaucet111  "100000000.0000 EOS"
#cleos  transfer  eosio  eosio.faucet  "199999730.0000 EOS"

## check eosio balance
cleos -u http://127.0.0.1:7777 get currency balance eosio.token eosio


# step last: resign all system account
#for account in eosio.bpay eosio.msig eosio.names eosio.ram eosio.ramfee eosio.saving eosio.stake eosio.token eosio.vpay
#do
 # cleos push action eosio updateauth '{"account": "'$account'", "permission": "active", "parent": "owner", "auth":{"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": active}}]}}' -p ${account}@active
  #cleos push action eosio updateauth '{"account": "'$account'", "permission": "owner", "parent": "",       "auth":{"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": active}}]}}' -p ${account}@owner
  #sleep 1;
#done

## check system accounts
#for account in eosio.bpay eosio.msig eosio.names eosio.ram eosio.ramfee eosio.saving eosio.stake eosio.token eosio.vpay
#do
 # echo --- ${account} --- && cleos get account ${account} && sleep 1;
#done

#cleos push action eosio updateauth '{"account": "eosio", "permission": "active", "parent": "owner", "auth":{"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio.prods", "permission": active}}]}}' -p eosio@active
#cleos push action eosio updateauth '{"account": "eosio", "permission": "owner", "parent": "",       "auth":{"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio.prods", "permission": active}}]}}' -p eosio@owner

## check eosio
cleos get account eosio
