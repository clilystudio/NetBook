package com.clilystudio.netbook;

import android.content.Context;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Properties;

public final class b {
    private static b b;
    private Context a;

    public static b a(Context context) {
        if (b == null) {
            b b2;
            b = b2 = new b();
            b2.a = context;
        }
        return b;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    private void b(Properties var1_1) {
        var2_2 = null;
        var3_3 = new FileOutputStream(new File(this.a.getDir("config", 0), "config"));
        var1_1.store(var3_3, null);
        var3_3.flush();
        var3_3.close();
        do {
            return;
            break;
        } while (true);
        catch(Exception var4_4){
            var3_3 = null;
            lbl14:
            // 3 sources:
            var4_5.printStackTrace();
            if (var3_3 == null)**continue;
            try {
                var3_3.close();
                return;
            } catch (Exception var7_7) {
                return;
            }
        }
        catch(Throwable var5_8)lbl - 1000: // 2 sources:
        {
            if (var2_2 != null) {
                var2_2.close();
            }
            lbl25:
            // 4 sources:
            do {
                throw var5_9;
                break;
            } while (true);
        }
        catch(Exception var8_11){
            return;
        }
        {
            catch(Exception var6_12){
            **continue;
        }
        }
        {
            catch(Throwable var5_10){
            var2_2 = var3_3;
            **GOTO lbl -1000
        }
        }
        catch(Exception var4_6){
            **GOTO lbl14
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public final Properties a() {
        var1_1 = null;
        var2_2 = new Properties();
        var8_3 = this.a.getDir("config", 0);
        var6_4 = new FileInputStream(var8_3.getPath() + File.separator + "config");
        var2_2.load(var6_4);
        var6_4.close();
        return var2_2;
        {
            catch(Exception var11_9){
            return var2_2;
        }
        }
        catch(Exception var5_5){
            return var2_2;
            catch(Throwable var3_7){
            }
            **GOTO lbl -1000
            catch(Throwable var10_11){
                var1_1 = var6_4;
                var3_8 = var10_11;
            }
            lbl - 1000: // 2 sources:
            {
                if (var1_1 == null) throw var3_8;
                try {
                    var1_1.close();
                } catch (Exception var4_10) {
                    throw var3_8;
                }
                throw var3_8;
            }
            catch(Exception var9_12){
            }
            if (var6_4 == null) return var2_2;
            try {
                var6_4.close();
                return var2_2;
            } catch (Exception var7_6) {
                return var2_2;
            }
        }
    }

    public final void a(String string, String string2) {
        Properties properties = this.a();
        properties.setProperty(string, string2);
        this.b(properties);
    }

    public final void a(Properties properties) {
        Properties properties2 = this.a();
        properties2.putAll(properties);
        this.b(properties2);
    }

    public final /* varargs */ void a(String... arrstring) {
        Properties properties = this.a();
        int n = arrstring.length;
        for (int i = 0; i < n; ++i) {
            properties.remove(arrstring[i]);
        }
        this.b(properties);
    }
}
