package com.clilystudio.netbook.util;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.AdsConfig2;
import com.clilystudio.netbook.model.MenuAd;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class a {
    private static a a = null;

    private a() {
    }

    public static a a() {
        if (a == null) {
            a = new a();
        }
        return a;
    }

    private static void a(AdsConfig2 adsConfig2) {
        MyApplication.a().a(adsConfig2, "saved_adverts_reader_menu");
    }

    private static AdsConfig2 d() {
        return (AdsConfig2) MyApplication.a().b("saved_adverts_reader_menu");
    }

    /*
     * Enabled aggressive block sorting
     */
    public final boolean a(List<MenuAd> list) {
        AdsConfig2 adsConfig2;
        if (list == null) {
            return false;
        }
        AdsConfig2 adsConfig22 = a.d();
        if (list.size() == 0) {
            if (adsConfig22 == null) {
                return false;
            }
            a.a(null);
            return true;
        }
        if (list == null) {
            list = null;
        } else {
            Collections.sort(list, new b(this));
        }
        if (adsConfig22 == null) {
            adsConfig2 = new AdsConfig2();
        } else {
            boolean bl;
            List<MenuAd> list2 = adsConfig22.getAdvertList();
            if (list == null || list2 == null) {
                bl = false;
            } else if (list.size() != list2.size()) {
                bl = false;
            } else {
                Iterator<MenuAd> iterator = list.iterator();
                do {
                    if (iterator.hasNext()) continue;
                    return false;
                } while (list2.contains(iterator.next()));
                bl = false;
            }
            if (bl) {
                return false;
            }
            adsConfig2 = adsConfig22;
        }
        adsConfig2.setAdvertList(list);
        adsConfig2.setIndex(0);
        a.a(adsConfig2);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final MenuAd b() {
        List<MenuAd> list;
        int n;
        AdsConfig2 adsConfig2 = a.d();
        if (adsConfig2 == null || adsConfig2 == null || (list = adsConfig2.getAdvertList()) == null || (n = adsConfig2.getIndex()) < 0 || n >= list.size()) {
            return null;
        }
        return list.get(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void c() {
        int n;
        AdsConfig2 adsConfig2 = a.d();
        if (adsConfig2 == null || adsConfig2.getAdvertList() == null || (n = adsConfig2.getAdvertList().size()) < 2) {
            return;
        }
        adsConfig2.setIndex((1 + adsConfig2.getIndex()) % n);
        a.a(adsConfig2);
    }
}
