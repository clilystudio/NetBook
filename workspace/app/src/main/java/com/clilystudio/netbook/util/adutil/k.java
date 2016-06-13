package com.clilystudio.netbook.util.adutil;

import java.lang.reflect.InvocationTargetException;

public class k {
    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    protected static /* varargs */ Object a(Class<?> var0, String var1_1, Class<?> var2_2, Object var3_3, Object... var4_4) {
        if (var2_2 != null)**GOTO lbl5
        try {
            var9_5 = var0.getDeclaredMethod(var1_1, new Class[0]);
            return var9_5.invoke(var3_3, var4_4);
            lbl5:
            // 1 sources:
            var9_5 = var8_6 = var0.getDeclaredMethod(var1_1, new Class[]{var2_2});
            return var9_5.invoke(var3_3, var4_4);
        } catch (NoSuchMethodException var7_7) {
            var7_7.printStackTrace();
            return null;
        } catch (InvocationTargetException var6_8) {
            var6_8.printStackTrace();
            return null;
        } catch (IllegalAccessException var5_9) {
            var5_9.printStackTrace();
            return null;
        }
    }

    public static boolean b() {
        try {
            Class.forName("com.baidu.mobad.feeds.BaiduNative");
            return true;
        } catch (ClassNotFoundException var0) {
            return false;
        }
    }

    public static boolean c() {
        try {
            Class.forName("com.qq.e.ads.nativ.NativeAD");
            return true;
        } catch (ClassNotFoundException var0) {
            return false;
        }
    }
}
