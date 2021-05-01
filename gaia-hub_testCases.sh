# Clear PageCache, dentries and inodes:
# =====================================
sync; echo 1 > /proc/sys/vm/drop_caches
sync; echo 2 > /proc/sys/vm/drop_caches
sync; echo 3 > /proc/sys/vm/drop_caches

#1. 1M file size - (10 iterations)
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 1M 1M_$i;sleep 10;done 			#Time [1:40 AM - 1:42 AM]
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 1M 1M_enc_$i 1;;sleep 10; done                #Time [1:48 AM - 1:50 AM]
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 1M 1M_sig_$i 0 1;sleep 10;done 		#Time [1:54:44 AM - 1:56:28 AM]
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 1M 1M_enc_sig_$i 1 1;sleep 10; done 		#Time [1:59 AM - 2:02 AM]

#2. 10M file size - (10 Iterations) 
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 10M 10M_$i;sleep 10;done 			#Time [2:05:47 AM - 2:07:36 AM]
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 10M 10M_enc_$i 1;;sleep 10; done          #Time [2:10:14  AM - 2:12:09 AM]
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 10M 10M_sig_$i 0 1;sleep 10;done 		#Time [2:13:49 AM - 2:15:38 AM]
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 10M 10M_enc_sig_$i 1 1;sleep 10; done 		#Time [2:18:19 AM - 2:20:16 AM]

#3. 100M file size - (10 Iterations) 
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 100M 100M_$i;sleep 10;done 			#Time [2:41:36 AM - 2:43:57 AM]
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 100M 100M_enc_$i 1;sleep 10; done          	#Time [2:50:46  AM - 2:52:55 AM]
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 100M 100M_sig_$i 0 1;sleep 10;done 		#Time [2:54:51 AM - 2:57:17 AM]
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 100M 100M_enc_sig_$i 1 1;sleep 10; done 		#Time [2:59:02 AM - 3:01:12 AM]

#4. Increasing file size Unencrypted - (10 Iterations) 
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 10M 10M$i 0;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 20M 20M$i 0;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 30M 30M$i 0;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 40M 40M$i 0;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 50M 50M$i 0;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 60M 60M$i 0;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 70M 70M$i 0;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 80M 80M$i 0;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 90M 90M$i 0;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 100M 100M$i 0;sleep 10;done

#5. Increasing file size encrypted - (10 Iterations) 
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 10M 10M_enc_$i 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 20M 20M_enc_$i 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 30M 30M_enc_$i 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 40M 40M_enc_$i 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 50M 50M_enc_$i 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 60M 60M_enc_$i 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 70M 70M_enc_$i 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 80M 80M_enc_$i 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 90M 90M_enc_$i 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 100M 100M_enc_$i 1;sleep 10;done

#6. Increasing file size unencrypted signed  - (10 Iterations) 
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 10M 10M_enc_$i 0 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 20M 20M_enc_$i 0 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 30M 30M_enc_$i 0 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 40M 40M_enc_$i 0 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 50M 50M_enc_$i 0 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 60M 60M_enc_$i 0 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 70M 70M_enc_$i 0 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 80M 80M_enc_$i 0 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 90M 90M_enc_$i 0 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 100M 100M_enc_$i 0 1;sleep 10;done

#7. Increasing file size encrypted_signed - (10 Iterations) 
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 10M 10M_enc_sign$i 1 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 20M 20M_enc_sign$i 1 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 30M 30M_enc_sign$i 1 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 40M 40M_enc_sign$i 1 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 50M 50M_enc_sign$i 1 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 60M 60M_enc_sign$i 1 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 70M 70M_enc_sign$i 1 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 80M 80M_enc_sign$i 1 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 90M 90M_enc_sign$i 1 1;sleep 10;done
for i in {0..9}; do date; time stx gaia_putfile "https://lumstx.tk" "$APP_KEY" 100M 100M_enc_sign$i 1 1;sleep 10;done
