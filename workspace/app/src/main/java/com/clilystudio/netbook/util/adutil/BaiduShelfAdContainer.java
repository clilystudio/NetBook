package com.clilystudio.netbook.util.adutil;

import android.content.Context;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Proxy;

public final class BaiduShelfAdContainer extends k {
    private static Class<?> a;

    static /* synthetic */ Class a() {
        return a;
    }

    static /* synthetic */ Class a(Class class_) {
        a = class_;
        return class_;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final void a(Context context, String string) {
        if (!BaiduShelfAdContainer.b()) return;
        try {
            Class class_ = Class.forName("com.baidu.mobad.feeds.BaiduNative$BaiduNativeNetworkListener");
            Object object = Proxy.newProxyInstance(class_.getClassLoader(), new Class[]{class_}, new h(this, string));
            Class class_2 = Class.forName("com.baidu.mobad.feeds.BaiduNative");
            Class[] arrclass = new Class[]{Context.class, class_};
            Object[] arrobject = new Object[]{context, object};
            Object obj = class_2.getConstructor(arrclass).newInstance(arrobject);
            Class class_3 = Class.forName("com.baidu.mobad.feeds.RequestParameters$Builder");
            Object obj2 = class_3.newInstance();
            BaiduShelfAdContainer.a(class_3, "keywords", String.class, obj2, "");
            Class<Integer> class_4 = Integer.TYPE;
            Object[] arrobject2 = new Object[]{3};
            BaiduShelfAdContainer.a(class_3, "setAdsType", class_4, obj2, arrobject2);
            Class<Boolean> class_5 = Boolean.TYPE;
            Object[] arrobject3 = new Object[]{false};
            BaiduShelfAdContainer.a(class_3, "confirmDownloading", class_5, obj2, arrobject3);
            Object object2 = BaiduShelfAdContainer.a(class_3, "build", null, obj2, new Object[0]);
            class_2.getDeclaredMethod("makeRequest", Class.forName("com.baidu.mobad.feeds.RequestParameters")).invoke(obj, object2);
            return;
        } catch (ClassNotFoundException var7_16) {
            var7_16.printStackTrace();
            return;
        } catch (NoSuchMethodException var6_17) {
            var6_17.printStackTrace();
            return;
        } catch (InvocationTargetException var5_18) {
            var5_18.printStackTrace();
            return;
        } catch (InstantiationException var4_19) {
            var4_19.printStackTrace();
            return;
        } catch (IllegalAccessException var3_20) {
            var3_20.printStackTrace();
            return;
        }
    }
}
