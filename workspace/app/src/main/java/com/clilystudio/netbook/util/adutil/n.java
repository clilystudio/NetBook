package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.util.c;

public final class n {
    private GdtShelfAdContainer a = new GdtShelfAdContainer();
    private BaiduShelfAdContainer b = new BaiduShelfAdContainer();

    public static void a(Advert advert, View view) {
        try {
            if (advert instanceof BaiduShelfAdContainer.BaiduAdvert) {
                ((BaiduShelfAdContainer.BaiduAdvert) advert).baiduRecord(view);
                return;
            }
            if (advert instanceof GdtShelfAdContainer.GdtAdvert) {
                ((GdtShelfAdContainer.GdtAdvert) advert).gdtRecord(view);
                return;
            }
        } catch (Exception var2_2) {
            var2_2.printStackTrace();
        }
    }

    public static Advert b(Context context, String string) {
        Advert advert = c.a().a(string);
        if (advert == null) {
            new n().a(context, string);
        }
        return advert;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(Context context, String string) {
        if (k.c()) {
            this.a.a(context, string);
            return;
        } else {
            if (!k.b()) return;
            {
                this.b.a(context, string);
                return;
            }
        }
    }
}
