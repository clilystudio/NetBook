package com.clilystudio.netbook.download;

import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

final class d extends Thread {
    private /* synthetic */ a a;

    d(a a2) {
        this.a = a2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    @Override
    public final void run() {
        var1_1 = null;
        var2_2 = new FileOutputStream(e.b);
        var7_3 = (HttpURLConnection) new URL(a.g(this.a)).openConnection();
        var7_3.connect();
        var8_4 = var7_3.getContentLength();
        var1_1 = var7_3.getInputStream();
        var9_5 = new byte[1024];
        var10_6 = 0;
        **while ((var11_7 = var1_1.read((byte[]) var9_5)) != -1)
            lbl - 1000: // 1 sources:
        {
            var10_6 += var11_7;
            var2_2.write(var9_5, 0, var11_7);
            if (var10_6 != var8_4) continue;
            a.f(this.a).sendEmptyMessage(2);
            break;
        }
        lbl18:
        // 2 sources:
        try {
            var2_2.close();
            if (var1_1 != null) {
                var1_1.close();
            }
            do {
                return;
                break;
            } while (true);
        } catch (IOException var12_8) {
            var12_8.printStackTrace();
            return;
        } catch (IOException var3_9) {
            var2_2 = null;
            lbl30:
            // 3 sources:
            var3_10.printStackTrace();
            if (var2_2 == null)**GOTO lbl34
            try {
                var2_2.close();
                lbl34:
                // 2 sources:
                if (var1_1 == null)**continue;
                var1_1.close();
                return;
            } catch (IOException var6_12) {
                var6_12.printStackTrace();
                return;
            }
        } catch (Throwable var4_13) {
            var2_2 = null;
            lbl42:
            // 2 sources:
            do {
                block20:
                {
                    if (var2_2 == null)**GOTO lbl46
                    try {
                        var2_2.close();
                        lbl46:
                        // 2 sources:
                        if (var1_1 == null) break block20;
                        var1_1.close();
                    } catch (IOException var5_16) {
                        var5_16.printStackTrace();
                        **continue;
                    }
                }
                lbl52:
                // 2 sources:
                do {
                    throw var4_14;
                    break;
                } while (true);
                break;
            } while (true);
        }
        {
            catch(Throwable var4_15){
            **continue;
        }
        }
        catch(IOException var3_11){
            **GOTO lbl30
        }
    }
}
