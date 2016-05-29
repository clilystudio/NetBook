package com.clilystudio.app.netbook.util;

import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.model.AdsConfig;
import com.clilystudio.app.netbook.model.Advert;
import com.clilystudio.app.netbook.model.AdvertData;
import com.clilystudio.app.netbook.model.MyApkAdvert;
import com.clilystudio.app.netbook.model.MyUrlAdvert;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class c {
    private static c a = null;

    public static c a() {
        if (a == null)
            a = new c();
        return a;
    }

    private static void a(AdsConfig paramAdsConfig) {
        MyApplication.a_getInstance().a(paramAdsConfig, "saved_adverts_1");
    }

    private static AdsConfig d() {
        return (AdsConfig) MyApplication.a_getInstance().b_readSavedInfo("saved_adverts_1");
    }

    public final Advert a(String paramString) {
        AdsConfig localAdsConfig = d();
        if (localAdsConfig == null)
            return null;
        List localList;
        int i;
        if (localAdsConfig != null) {
            localList = localAdsConfig.getAdvertList();
            if (localList != null) {
                i = localAdsConfig.getIndex();
                if ((i < 0) || (i >= localList.size())) ;
            }
        }
        int k;
        for (int j = i; ; j = k)
            if (!((Advert) localList.get(j)).canShowAtPosition(paramString)) {
                k = (j + 1) % localList.size();
                if (k == i)
                    return null;
            } else {
                return (Advert) localList.get(j);
            }
    }

    public final void a(Advert paramAdvert) {
        AdsConfig localAdsConfig = d();
        if ((localAdsConfig == null) || (localAdsConfig.getAdvertList() == null)) ;
        List localList;
        do {
            return;
            localList = localAdsConfig.getAdvertList();
        }
        while (!localList.contains(paramAdvert));
        ((Advert) localList.get(localList.indexOf(paramAdvert))).setRead(true);
        a(localAdsConfig);
    }

    public final boolean a(AdvertData[] paramArrayOfAdvertData) {
        if (paramArrayOfAdvertData == null) ;
        label264:
        while (true) {
            return false;
            AdsConfig localAdsConfig1 = d();
            if (paramArrayOfAdvertData.length == 0) {
                if (localAdsConfig1 != null) {
                    a(null);
                    return true;
                }
            } else {
                Advert[] arrayOfAdvert = new Advert[paramArrayOfAdvertData.length];
                int i = 0;
                if (i < paramArrayOfAdvertData.length) {
                    AdvertData localAdvertData = paramArrayOfAdvertData[i];
                    if (localAdvertData.isApk()) ;
                    for (Object localObject = new MyApkAdvert(); ; localObject = new MyUrlAdvert()) {
                        ((Advert) localObject).setData(localAdvertData);
                        arrayOfAdvert[i] = localObject;
                        i++;
                        break;
                    }
                }
                List localList1 = Arrays.asList(arrayOfAdvert);
                if (localList1 == null) ;
                AdsConfig localAdsConfig2;
                for (List localList2 = null; localAdsConfig1 == null; localList2 = localList1) {
                    localAdsConfig2 = new AdsConfig();
                    localAdsConfig2.setAdvertList(localList2);
                    localAdsConfig2.setIndex(0);
                    a(localAdsConfig2);
                    return true;
                    Collections.sort(localList1, new d(this));
                }
                List localList3 = localAdsConfig1.getAdvertList();
                int j;
                if ((localList2 == null) || (localList3 == null))
                    j = 0;
                while (true) {
                    if (j != 0)
                        break label264;
                    localAdsConfig2 = localAdsConfig1;
                    break;
                    if (localList2.size() != localList3.size()) {
                        j = 0;
                    } else {
                        Iterator localIterator = localList2.iterator();
                        while (true)
                            if (localIterator.hasNext())
                                if (!localList3.contains((Advert) localIterator.next())) {
                                    j = 0;
                                    break;
                                }
                        j = 1;
                    }
                }
            }
        }
    }

    public final void b() {
        AdsConfig localAdsConfig = d();
        if (localAdsConfig == null)
            return;
        localAdsConfig.setLastDeleteTime(Calendar.getInstance().getTimeInMillis());
        a(localAdsConfig);
    }

    public final void c() {
        AdsConfig localAdsConfig = d();
        if ((localAdsConfig == null) || (localAdsConfig.getAdvertList() == null)) ;
        int i;
        do {
            return;
            i = localAdsConfig.getAdvertList().size();
        }
        while (i < 2);
        localAdsConfig.setIndex((1 + localAdsConfig.getIndex()) % i);
        a(localAdsConfig);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.c
 * JD-Core Version:    0.6.2
 */