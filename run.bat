@echo off
CALL rspec spec/tc02_sigin_with_existing_account_spec.rb -fd -fh -o results/tc02_sigin_with_existing_account_spec.html
CALL rspec spec/tc01_user_can_create_account_with_valid_data_spec.rb -fd -fh -o results/tc01_user_can_create_account_with_valid_data_spec.html
pause