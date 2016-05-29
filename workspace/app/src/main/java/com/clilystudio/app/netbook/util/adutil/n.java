package com.clilystudio.app.netbook.util.adutil;

import android.content.Context;
import android.view.View;

import com.clilystudio.app.netbook.model.Advert;
import com.clilystudio.app.netbook.util.c;

public final class n {
    private GdtShelfAdContainer a = new GdtShelfAdContainer();
    private BaiduShelfAdContainer b = new BaiduShelfAdContainer();

    public static void a(Advert paramAdvert, View paramView) {
        try {
            if ((paramAdvert instanceof BaiduShelfAdContainer.BaiduAdvert)) {
                ((BaiduShelfAdContainer.BaiduAdvert) paramAdvert).baiduRecord(paramView);
                return;
            }
            if ((paramAdvert instanceof GdtShelfAdContainer.GdtAdvert)) {
                ((GdtShelfAdContainer.GdtAdvert) paramAdvert).gdtRecord(paramView);
                return;
            }
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }

    public static Advert b(Context paramContext, String paramString) {
        Advert localAdvert = c.a().a(paramString);
        if (localAdvert == null)
            new n().a(paramContext, paramString);
        return localAdvert;
    }

    public final void a(Context paramContext, String paramString) {
        if (k.c())
            this.a.a(paramContext, paramString);
        while (!k.b())
            return;
        this.b.a(paramContext, paramString);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.adutil.n
 * JD-Core Version:    0.6.2
 */