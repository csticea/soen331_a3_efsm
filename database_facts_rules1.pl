% Author:  Dan Magariu 9217479  Calin Sticea 6339352
% Date: 3/30/2015

% Part 1 states (Overall state)
initialstate(dormant,null).
state(dormant).
state(init).
state(safe_shutdown).
state(error_diagnosis).
state(idle).
state(monitoring).


% Part 2 states (Inital state)
initialstate(boot_hw, init).
state(boot_hw).
state(senchk).
state(tchk).
state(psichk).
state(ready).
superstate(init,boot_hw).
superstate(init,senchk).
superstate(init,tchk).
superstate(init,psichk).
superstate(init,ready).

% Part 3 states (Monitoring state)
initialstate(monidle,monitoring).
state(monidle).
state(regulate_environment).
state(lockdown).
superstate(monitoring,monidle).
superstate(monitoring,regulate_environment).
superstate(monitoring,lockdown).

% Part 4 states (Lockdown state)
initialstate(prep_vpurge,lockdown).
state(prep_vpurge).
state(alt_temp).
state(alt_psi).
state(risk_assess).
state(safe_status).
superstate(lockdown,prep_vpurge).
superstate(lockdown,risk_assess).
superstate(lockdown,alt_temp).
superstate(lockdown,alt_psi).
superstate(lockdown,safe_status).

% Part 5 states (Error diagnosis state)
initialstate(error_rcv,error_diagnosis).
state(error_rcv).
state(applicable_rescue).
state(reset_module_data).
superstate(error_diagnosis,error_rcv).
superstate(error_diagnosis,applicable_rescue).
superstate(error_diagnosis,reset_module_data).





