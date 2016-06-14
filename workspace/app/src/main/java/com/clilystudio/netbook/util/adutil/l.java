package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.model.AdvertData;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;

public final class l extends a
        implements View.OnClickListener {
    private com.androidquery.a b;
    private View c;
    private View d;
    private Class<?> e;
    private Object f;
    private boolean g = false;

    public l(AdSplashImp adSplashImp) {
        super(adSplashImp);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static /* varargs */ Object a(Class<?> var0, String var1_1, Class<?> var2_2, Object var3_3, Object... var4_4) {
        if (var2_2 != null)**GOTO lbl5
        try {
            var10_5 = var0.getDeclaredMethod(var1_1, new Class[0]);
            return var10_5.invoke(var3_3, var4_4);
            lbl5:
            // 1 sources:
            var10_5 = var9_6 = var0.getDeclaredMethod(var1_1, new Class[]{var2_2});
            return var10_5.invoke(var3_3, var4_4);
        } catch (NoSuchMethodException var8_7) {
            var8_7.printStackTrace();
            return null;
        } catch (InvocationTargetException var7_8) {
            var7_8.printStackTrace();
            return null;
        } catch (IllegalAccessException var6_9) {
            var6_9.printStackTrace();
            return null;
        } catch (NullPointerException var5_10) {
            var5_10.printStackTrace();
            return null;
        }
    }

    public final void a() {
        Class class_ = this.e;
        Object object = this.f;
        Object[] arrobject = new Object[]{this.d};
        l.a(class_, "onClicked", View.class, object, arrobject);
    }

    @Override
    public final boolean a(View view) {
        try {
            this.a.a();
            this.b = new com.androidquery.a(view.getContext());
            this.c = view;
            this.d = this.c.findViewById(2131493264);
            this.d.setOnClickListener(this);
            Class class_ = Class.forName("com.qq.e.ads.nativ.NativeAD$NativeAdListener");
            Object object = Proxy.newProxyInstance(class_.getClassLoader(), new Class[]{class_}, this);
            Class class_2 = Class.forName("com.qq.e.ads.nativ.NativeAD");
            Class[] arrclass = new Class[]{Context.class, String.class, String.class, class_};
            Object[] arrobject = new Object[]{view.getContext(), "1104888432", "4040702741756839", object};
            Object obj = class_2.getConstructor(arrclass).newInstance(arrobject);
            Class[] arrclass2 = new Class[]{Integer.TYPE};
            Method method = class_2.getDeclaredMethod("loadAD", arrclass2);
            Object[] arrobject2 = new Object[]{1};
            method.invoke(obj, arrobject2);
            Class class_3 = Class.forName("com.qq.e.ads.cfg.DownAPPConfirmPolicy");
            ?[]arrobj = class_3.getEnumConstants();
            Method method2 = class_2.getDeclaredMethod("setDownAPPConfirmPolicy", class_3);
            Object[] arrobject3 = new Object[]{arrobj[1]};
            method2.invoke(obj, arrobject3);
            return true;
        } catch (Exception var2_15) {
            return false;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final Object invoke(Object var1_1, Method var2_2, Object[] var3_3) {
        var4_4 = var2_2.getName();
        var5_5 = -1;
        switch (var4_4.hashCode()) {
            case -1769079577: {
                if (var4_4.equals("onADLoaded")) {
                    var5_5 = 0;
                }
            }
            default: {
                **GOTO lbl12
            }
            case -1013111773:
        }
        if (var4_4.equals("onNoAD")) {
            var5_5 = 1;
        }
        lbl12:
        // 4 sources:
        switch (var5_5) {
            default: {
                return null;
            }
            case 0: {
                this.e = Class.forName("com.qq.e.ads.nativ.NativeADDataRef");
                var6_6 = ((List) var3_3[0]).iterator();
                if (!var6_6.hasNext()) break;
                var8_7 = var6_6.next();
                var9_8 = new AdvertData();
                var9_8.setApk((Boolean) l.a(this.e, "isAPP", null, var8_7, new Object[0]));
                this.a.a(var9_8.isApk());
                this.a.a(this);
                this.f = var8_7;
                var9_8.setImg((String) l.a(this.e, "getImgUrl", null, var8_7, new Object[0]));
                ((com.androidquery.a) this.b.a(this.d)).a((String) l.a(this.e, "getImgUrl", null, var8_7, new Object[0]), false, true);
                var11_9 = this.e;
                var12_10 = new Object[]{this.c};
                l.a(var11_9, "onExposured", View.class, var8_7, var12_10);
                this.a.b();
                this.g = true;
                return null;
            }
            case 1: {
                this.a.c();
                return null;
            }
        }
        var7_11 = false;
        if (var7_11 != false) return null;
        this.a.c();
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131493264: {
                if (!this.g) return;
                this.a();
                return;
            }
        }
    }
}
