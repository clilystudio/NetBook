package com.clilystudio.netbook.util.adutil;

import com.clilystudio.netbook.event.B;
import com.clilystudio.netbook.model.AdvertData;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

final class m
        implements InvocationHandler {
    m(GdtShelfAdContainer paramGdtShelfAdContainer, String paramString) {
    }

    public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject) {
        String str = paramMethod.getName();
        int i = -1;
        switch (str.hashCode()) {
            default:
                switch (i) {
                    default:
                    case 0:
                }
            case -1769079577:
            case -1013111773:
        }
        while (true) {
            return null;
            if (!str.equals("onADLoaded"))
                break;
            i = 0;
            break;
            if (!str.equals("onNoAD"))
                break;
            i = 1;
            break;
            GdtShelfAdContainer.a(Class.forName("com.qq.e.ads.nativ.NativeADDataRef"));
            Iterator localIterator = ((List) paramArrayOfObject[0]).iterator();
            while (localIterator.hasNext()) {
                Object localObject = localIterator.next();
                GdtShelfAdContainer.GdtAdvert localGdtAdvert = new GdtShelfAdContainer.GdtAdvert();
                AdvertData localAdvertData = new AdvertData();
                localAdvertData.setTitle((String) k.a(GdtShelfAdContainer.a(), "getTitle", null, localObject, new Object[0]));
                localAdvertData.setApk(((Boolean) k.a(GdtShelfAdContainer.a(), "isAPP", null, localObject, new Object[0])).booleanValue());
                localAdvertData.setImg((String) k.a(GdtShelfAdContainer.a(), "getIconUrl", null, localObject, new Object[0]));
                localAdvertData.setDesc((String) k.a(GdtShelfAdContainer.a(), "getDesc", null, localObject, new Object[0]));
                localGdtAdvert.setResponse(localObject);
                localGdtAdvert.setData(localAdvertData);
                i.a().c(new B(localGdtAdvert, this.a));
            }
        }
    }
}

