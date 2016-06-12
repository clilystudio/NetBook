package com.clilystudio.netbook.util.adutil;

import android.view.View;

public final class g extends a {

    public g(AdSplashImp AdSplashImp1) {
        super(AdSplashImp1);
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final boolean a(View View1) {
    }

    public final Object invoke(Object Object1, reflect.Method Method2, Object[] Object_1darray3) {
        String String4 = Method2.getName();
        int int5 = -1;

        switch (String4.hashCode()) {
            case 1960433767:
                if (String4.equals("onAdDismissed")) {
                    int5 = 0;
                    break;
                }
                break;
            case 676776255:
                if (String4.equals("onAdFailed")) {
                    int5 = 1;
                    break;
                }
                break;
            case 273540089:
                if (String4.equals("onAdPresent")) {
                    int5 = 2;
                    break;
                }
                break;
            case 157935686:
                if (String4.equals("onAdClick")) {
                    int5 = 3;
                    break;
                }
                break;
            default:
                break;
        }
        switch (int5) {
            case 1:
                a.c();
                break;
            case 2:
                a.a(true);
                a.b();
                break;
            case 3:
                a.d();
                break;
            case 0:
            default:
                break;
        }
        return null;
    }
}
