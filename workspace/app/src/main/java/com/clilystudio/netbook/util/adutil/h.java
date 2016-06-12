package com.clilystudio.netbook.util.adutil;

import com.clilystudio.netbook.event.B;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.AdvertData;

import java.util.Iterator;
import java.util.List;

final class h implements reflect.InvocationHandler {

    private String a;

    h(BaiduShelfAdContainer BaiduShelfAdContainer1, String String2) {
        a = String2;
    }

    public final Object invoke(Object Object1, reflect.Method Method2, Object[] Object_1darray3) {
        String String4 = Method2.getName();
        int int5 = -1;

        switch (String4.hashCode()) {
            case -2145385252:
                if (String4.equals("onNativeLoad")) {
                    int5 = 0;
                    break;
                }
                break;
            case -2145577196:
                if (String4.equals("onNativeFail")) {
                    int5 = 1;
                    break;
                }
                break;
            default:
                break;
        }
        switch (int5) {
            case 0:
                Iterator Iterator7;

                BaiduShelfAdContainer.a(Class.forName("com.baidu.mobad.feeds.NativeResponse"));
                Iterator7 = ((List) Object_1darray3[0]).iterator();
                while (Iterator7.hasNext()) {
                    Object Object8 = Iterator7.next();
                    Object Object9 = new BaiduShelfAdContainer$BaiduAdvert();
                    AdvertData AdvertData10 = new AdvertData();

                    AdvertData10.setTitle((String) k.a(BaiduShelfAdContainer.a(), "getTitle", null, Object8, new Object[0]));
                    AdvertData10.setApkSize(((Long) k.a(BaiduShelfAdContainer.a(), "getAppSize", null, Object8, new Object[0])).intValue());
                    AdvertData10.setApk(((Boolean) k.a(BaiduShelfAdContainer.a(), "isDownloadApp", null, Object8, new Object[0])).booleanValue());
                    AdvertData10.setImg((String) k.a(BaiduShelfAdContainer.a(), "getIconUrl", null, Object8, new Object[0]));
                    AdvertData10.setDesc((String) k.a(BaiduShelfAdContainer.a(), "getDesc", null, Object8, new Object[0]));
                    ((BaiduShelfAdContainer$BaiduAdvert) Object9).setResponse(Object8);
                    ((BaiduShelfAdContainer$BaiduAdvert) Object9).setData(AdvertData10);
                    i.a().c(new B((Advert) Object9, a));
                }
                break;
            default:
                break;
        }
        return null;
    }
}
