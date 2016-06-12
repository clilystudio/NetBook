package com.clilystudio.netbook.util;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.AdsConfig2;
import com.clilystudio.netbook.model.MenuAd;

import java.io.Serializable;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class a {

    private static a a = null;

    public static a a() {
        if (a == null)
            a = new a();
        return a;
    }

    private static void a(AdsConfig2 AdsConfig2_1) {
        MyApplication.a().a((Serializable) AdsConfig2_1, "saved_adverts_reader_menu");
    }

    private static AdsConfig2 d() {
        return (AdsConfig2) MyApplication.a().b("saved_adverts_reader_menu");
    }

    public final boolean a(List List1) {
        if (List1 == null)
            return false;
        else {
            AdsConfig2 AdsConfig2_2 = d();

            if (List1.size() == 0) {
                if (AdsConfig2_2 == null)
                    return false;
                else {
                    a(null);
                    return true;
                }
            } else {
                AdsConfig2 AdsConfig2_3;

                if (List1 == null)
                    List1 = null;
                else
                    Collections.sort(List1, (Comparator) new b(this));
                if (AdsConfig2_2 == null)
                    AdsConfig2_3 = new AdsConfig2();
                else {
                    List List4 = AdsConfig2_2.getAdvertList();
                    int int5;

                    label_53:
                    {
                        if (List1 == null || List4 == null)
                            int5 = 0;
                        else if (List1.size() != List4.size())
                            int5 = 0;
                        else {
                            Iterator Iterator6 = List1.iterator();

                            while (Iterator6.hasNext()) {
                                if (List4.contains((MenuAd) Iterator6.next()))
                                    continue;
                                int5 = 0;
                                break label_53;
                            }
                            int5 = 1;
                        }
                    }
                    if (int5 != 0)
                        return false;
                    else
                        AdsConfig2_3 = AdsConfig2_2;
                }
                AdsConfig2_3.setAdvertList(List1);
                AdsConfig2_3.setIndex(0);
                a(AdsConfig2_3);
                return true;
            }
        }
    }

    public final MenuAd b() {
        AdsConfig2 AdsConfig2_1 = d();

        if (AdsConfig2_1 != null && AdsConfig2_1 != null) {
            List List2 = AdsConfig2_1.getAdvertList();

            if (List2 != null) {
                int int3 = AdsConfig2_1.getIndex();

                if (int3 >= 0 && int3 < List2.size())
                    return (MenuAd) List2.get(int3);
            }
        }
        return null;
    }

    public final void c() {
        AdsConfig2 AdsConfig2_1 = d();

        if (AdsConfig2_1 != null && AdsConfig2_1.getAdvertList() != null) {
            int int2 = AdsConfig2_1.getAdvertList().size();

            if (int2 >= 2) {
                AdsConfig2_1.setIndex((1 + AdsConfig2_1.getIndex()) % int2);
                a(AdsConfig2_1);
                return;
            }
        }
    }
}
