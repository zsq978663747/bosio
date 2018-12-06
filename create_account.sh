
cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio boscorebos11 EOS7hjYGvhRF99czdXE5acUPjnWoKebpxebgRZqXxPUSxmT1K9q97 EOS5zhvmicLyPRvvY1a5TbYj1aNfqbMmd1ezgknWLrbR87fMnpnwo
cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio boscorebos12 EOS84H324q8mu2oS1BwDcWXKJDpNgCiDauYgcVpRcYEzXxvfNvifa EOS6oAKmx9cMhvfdZ4pacWhvPuFjd6n6JgF886xmKFY85Gdkw2rik
cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio boscorebos13 EOS7enNAQLxT8biyNM39nApGYJrcS59TQY9dPBBeyZn1A4Ai9ouCk EOS4wc7dsUsWS4L4QDMpJBhUqaqx6f4ZU7tSrGunGWYUAiSWygjtr

for account in youbeforeme1 youbeforeme2 youbeforeme3 bosmiaomiao1 bosmiaomiao2 bosmiaomiao3 bosmiaomiao4 bosmiaomiao5 pinganbaobao pinganbaobei
do
    cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio ${account}  EOS5v5oqe1LtNVheTAZGcWkTbrZ8UJ7TFZg2LNsj3q6iwdBZP9au3;
    sleep 1;
done

for account in london111111 franklin1111 dubai1111111 bombay111111 hongkong1111
do
    cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio ${account} EOS4wVs4b9gUnQURXdDsLmnJEXMpqE1ir28L48gCEpMyutnd6Gxrj;
    sleep 1;
done

cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio zeromindzero  EOS5gLn1NVinyJPvn2U4ow45GdBaoVdcz7zVDwfsTCLzft63KMC36
cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio montecarloio  EOS6NYP8EujJURbArAHUMYCSjJAH7Vwa5Sxx7aLUiXiEwWN8XsYJw
cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio alphalimited  EOS7RcQx7g7tJGf3DSYSUgF2FWuNh1TTMAPuo7c82WCnWG6V4F4fR
cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio alphaxsydney  EOS7Vgx98hC4eisQVubCNvBGGN8gM7BKucZ5mJzgVUXpJMLF65okg
cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio mindtosydney  EOS8BeTKczXv6uEKksV8fF74R1fiARTVWJ7Qwtn8mRmM17aYqkSjb
cleos -u http://127.0.0.1:7777  system newaccount --stake-net "10.0000 BOS" --stake-cpu "10.0000 BOS" --buy-ram "10.0000 BOS"  eosio montexsydney  EOS8R9yKbEJ5mbU7hG5dV8pbhmaYMYpXxhCwpKwQ5j28QEikaKxUK
cleos  -u http://127.0.0.1:7777 transfer  eosio  zeromindzero "100000000.0000 BOS"
cleos  -u http://127.0.0.1:7777 transfer  eosio  youbeforeme1 "100000000.0000 BOS"
cleos  -u http://127.0.0.1:7777 transfer  eosio  london111111 "100000000.0000 BOS"
cleos  -u http://127.0.0.1:7777 transfer  eosio  boscorebos11 "100000000.0000 BOS"


echo -e  "regproducer\n"

cleos -u http://127.0.0.1:7777 system regproducer boscorebos11 EOS6CnMhuP3SnLWmGNZyoJqKtzmNJcVG1whmFqjivt4GRT1pfgTwA http://boscore.io 9
cleos -u http://127.0.0.1:7777 system regproducer boscorebos12 EOS66jdoCC9oKy2N79bQPF4pH4XmeZLBEfxTP5gk7s1ykmSES4P3z http://boscore.io 9
cleos -u http://127.0.0.1:7777 system regproducer boscorebos13 EOS8kMTX3wZkDc8RZa7yPpR6xekJ6zbddXonCXwKHSyUXx8R2sgyW http://boscore.io 9


echo -e "delegatebw\n"
cleos -u http://127.0.0.1:7777 system delegatebw boscorebos11 boscorebos11 "40000000.0000 BOS" "40000000.0000 BOS"
