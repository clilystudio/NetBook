package com.clilystudio.netbook.download;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

final class c
        extends Thread {
    private /* synthetic */ a a;

    c(a a2) {
        this.a = a2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    @Override
    public final void run() {
        var1_1 = null;
        var2_2 = new File(a.c(this.a));
        if (!var2_2.exists()) {
            var2_2.mkdirs();
        }
        var4_3 = new FileOutputStream(new File(a.c(this.a), a.d(this.a)));
        var8_4 = (HttpURLConnection) new URL(a.e(this.a)).openConnection();
        var8_4.connect();
        var9_5 = var8_4.getContentLength();
        var1_1 = var8_4.getInputStream();
        var10_6 = new byte[1024];
        var11_7 = 0;
        **while ((var12_8 = var1_1.read((byte[]) var10_6)) != -1)
            lbl - 1000: // 1 sources:
        {
            var11_7 += var12_8;
            var4_3.write(var10_6, 0, var12_8);
            if (var11_7 != var9_5) continue;
            a.f(this.a).sendEmptyMessage(1);
            break;
        }
        lbl21:
        // 2 sources:
        try {
            var4_3.close();
            if (var1_1 != null) {
                var1_1.close();
            }
            do {
                return;
                break;
            } while (true);
        } catch (IOException var13_9) {
            var13_9.printStackTrace();
            return;
        } catch (IOException var6_10) {
            var4_3 = null;
            lbl33:
            // 3 sources:
            var6_11.printStackTrace();
            if (var4_3 == null)**GOTO lbl37
            try {
                var4_3.close();
                lbl37:
                // 2 sources:
                if (var1_1 == null)**continue;
                var1_1.close();
                return;
            } catch (IOException var7_13) {
                var7_13.printStackTrace();
                return;
            }
        } catch (Throwable var3_14) {
            var4_3 = null;
            lbl45:
            // 2 sources:
            do {
                block21:
                {
                    if (var4_3 == null)**GOTO lbl49
                    try {
                        var4_3.close();
                        lbl49:
                        // 2 sources:
                        if (var1_1 == null) break block21;
                        var1_1.close();
                    } catch (IOException var5_17) {
                        var5_17.printStackTrace();
                        **continue;
                    }
                }
                lbl55:
                // 2 sources:
                do {
                    throw var3_15;
                    break;
                } while (true);
                break;
            } while (true);
        }
        {
            catch(Throwable var3_16){
            **continue;
        }
        }
        catch(IOException var6_12){
            **GOTO lbl33
        }
    }
}
