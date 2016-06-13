package com.clilystudio.netbook.util;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.AdsConfig;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.AdvertData;
import com.clilystudio.netbook.model.MyApkAdvert;
import com.clilystudio.netbook.model.MyUrlAdvert;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class c {
    private static c a = null;

    private c() {
    }

    public static c a() {
        if (a == null) {
            a = new c();
        }
        return a;
    }

    private static void a(AdsConfig adsConfig) {
        MyApplication.a().a(adsConfig, "saved_adverts_1");
    }

    private static AdsConfig d() {
        return (AdsConfig) MyApplication.a().b("saved_adverts_1");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final Advert a(String string) {
        int n;
        List<Advert> list;
        AdsConfig adsConfig = c.d();
        if (adsConfig == null) {
            return null;
        }
        if (adsConfig == null || (list = adsConfig.getAdvertList()) == null || (n = adsConfig.getIndex()) < 0 || n >= list.size()) return null;
        int n2 = n;
        while (!list.get(n2).canShowAtPosition(string)) {
            int n3 = (n2 + 1) % list.size();
            if (n3 == n) {
                return null;
            }
            n2 = n3;
        }
        return list.get(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(Advert advert) {
        List<Advert> list;
        AdsConfig adsConfig = c.d();
        if (adsConfig == null || adsConfig.getAdvertList() == null || !(list = adsConfig.getAdvertList()).contains(advert)) {
            return;
        }
        list.get(list.indexOf(advert)).setRead(true);
        c.a(adsConfig);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final boolean a(AdvertData[] arradvertData) {
        AdsConfig adsConfig;
        List<Advert> list;
        if (arradvertData == null) return false;
        AdsConfig adsConfig2 = c.d();
        if (arradvertData.length == 0) {
            if (adsConfig2 == null) return false;
            {
                c.a(null);
                return true;
            }
        }
        Advert[] arradvert = new Advert[arradvertData.length];
        for (int i = 0; i < arradvertData.length; ++i) {
            AdvertData advertData = arradvertData[i];
            Advert advert = advertData.isApk() ? new MyApkAdvert() : new MyUrlAdvert();
            advert.setData(advertData);
            arradvert[i] = advert;
        }
        List<Advert> list2 = Arrays.asList(arradvert);
        if (list2 == null) {
            list = null;
        } else {
            Collections.sort(list2, new d(this));
            list = list2;
        }
        if (adsConfig2 == null) {
            adsConfig = new AdsConfig();
        } else {
            boolean bl;
            List<Advert> list3 = adsConfig2.getAdvertList();
            if (list == null || list3 == null) {
                bl = false;
            } else if (list.size() != list3.size()) {
                bl = false;
            } else {
                Iterator<Advert> iterator = list.iterator();
                do {
                    if (iterator.hasNext()) continue;
                    return false;
                } while (list3.contains(iterator.next()));
                bl = false;
            }
            if (bl) {
                return false;
            }
            adsConfig = adsConfig2;
        }
        adsConfig.setAdvertList(list);
        adsConfig.setIndex(0);
        c.a(adsConfig);
        return true;
    }

    public final void b() {
        AdsConfig adsConfig = c.d();
        if (adsConfig == null) {
            return;
        }
        adsConfig.setLastDeleteTime(Calendar.getInstance().getTimeInMillis());
        c.a(adsConfig);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void c() {
        int n;
        AdsConfig adsConfig = c.d();
        if (adsConfig == null || adsConfig.getAdvertList() == null || (n = adsConfig.getAdvertList().size()) < 2) {
            return;
        }
        adsConfig.setIndex((1 + adsConfig.getIndex()) % n);
        c.a(adsConfig);
    }
}
