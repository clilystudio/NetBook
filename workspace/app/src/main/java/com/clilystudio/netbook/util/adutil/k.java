package com.clilystudio.netbook.util.adutil;

public class k {

    protected static transient Object a(Class Class1, String String2, Class Class3, Object Object4, Object[] Object_1darray5) {
        reflect.Method Method10;

        if (Class3 == null) {
            try {
                Method10 = Class1.getDeclaredMethod(String2, new Class[0]);
                return Method10.invoke(Object4, Object_1darray5);
            } catch (NoSuchMethodException NoSuchMethodException8) {
                NoSuchMethodException8.printStackTrace();
                return null;
            } catch (reflect.InvocationTargetException InvocationTargetException7) {
                InvocationTargetException7.printStackTrace();
                return null;
            } catch (IllegalAccessException IllegalAccessException6) {
                IllegalAccessException6.printStackTrace();
                return null;
            }
        } else {
            reflect.Method Method9 = Class1.getDeclaredMethod(String2, {Class3});

            Method10 = Method9;
        }
    }

    public static boolean b() {
        try {
            Class.forName("com.baidu.mobad.feeds.BaiduNative");
        } catch (ClassNotFoundException ClassNotFoundException1) {
            return false;
        }
        return true;
    }

    public static boolean c() {
        try {
            Class.forName("com.qq.e.ads.nativ.NativeAD");
        } catch (ClassNotFoundException ClassNotFoundException1) {
            return false;
        }
        return true;
    }
}
