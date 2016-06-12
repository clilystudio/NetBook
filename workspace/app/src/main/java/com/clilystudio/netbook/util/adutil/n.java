package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.model.Advert;

public final class n {

    private GdtShelfAdContainer a = new GdtShelfAdContainer();
    private BaiduShelfAdContainer b = new BaiduShelfAdContainer();

    public static void a(Advert Advert1, View View2) {
        label_8:
        {
            try {
                if (!(Advert1 instanceof BaiduShelfAdContainer$BaiduAdvert))
                    break label_8;
                ((BaiduShelfAdContainer$BaiduAdvert) Advert1).baiduRecord(View2);
            } catch (Exception Exception3) {
                Exception3.printStackTrace();
            }
            return;
        }
        try {
            if (!(Advert1 instanceof GdtShelfAdContainer$GdtAdvert))
                return;
            ((GdtShelfAdContainer$GdtAdvert) Advert1).gdtRecord(View2);
        } catch (Exception Exception4) {
            Exception4.printStackTrace();
        }
    }

    public static Advert b(Context Context1, String String2) {
        Advert Advert3 = com.clilystudio.netbook.util.c.a().a(String2);

        if (Advert3 == null)
            new n().a(Context1, String2);
        return Advert3;
    }

    public final void a(Context Context1, String String2) {
        if (k.c())
            a.a(Context1, String2);
        else if (k.b()) {
            b.a(Context1, String2);
            return;
        }
    }
}
