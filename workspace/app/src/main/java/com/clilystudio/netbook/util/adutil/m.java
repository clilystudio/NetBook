package com.clilystudio.netbook.util.adutil;

import com.clilystudio.netbook.event.B;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.AdvertData;

import java.util.Iterator;
import java.util.List;

final class m implements reflect.InvocationHandler {

    private String a;

    m(GdtShelfAdContainer GdtShelfAdContainer1, String String2) {
        a = String2;
    }

    public final Object invoke(Object Object1, reflect.Method Method2, Object[] Object_1darray3) {
        String String4 = Method2.getName();
        int int5 = -1;

        switch (String4.hashCode()) {
            case -1769079577:
                if (String4.equals("onADLoaded")) {
                    int5 = 0;
                    break;
                }
                break;
            case -1013111773:
                if (String4.equals("onNoAD")) {
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

                GdtShelfAdContainer.a(Class.forName("com.qq.e.ads.nativ.NativeADDataRef"));
                Iterator7 = ((List) Object_1darray3[0]).iterator();
                while (Iterator7.hasNext()) {
                    Object Object8 = Iterator7.next();
                    Object Object9 = new GdtShelfAdContainer$GdtAdvert();
                    AdvertData AdvertData10 = new AdvertData();

                    AdvertData10.setTitle((String) k.a(GdtShelfAdContainer.a(), "getTitle", null, Object8, new Object[0]));
                    AdvertData10.setApk(((Boolean) k.a(GdtShelfAdContainer.a(), "isAPP", null, Object8, new Object[0])).booleanValue());
                    AdvertData10.setImg((String) k.a(GdtShelfAdContainer.a(), "getIconUrl", null, Object8, new Object[0]));
                    AdvertData10.setDesc((String) k.a(GdtShelfAdContainer.a(), "getDesc", null, Object8, new Object[0]));
                    ((GdtShelfAdContainer$GdtAdvert) Object9).setResponse(Object8);
                    ((GdtShelfAdContainer$GdtAdvert) Object9).setData(AdvertData10);
                    i.a().c(new B((Advert) Object9, a));
                }
                break;
            default:
                break;
        }
        return null;
    }
}
