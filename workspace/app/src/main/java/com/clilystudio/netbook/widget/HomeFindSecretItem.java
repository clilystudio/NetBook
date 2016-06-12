package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;

import com.clilystudio.netbook.util.t;

import java.util.Calendar;
import java.util.Date;

public class HomeFindSecretItem extends HomeFindItem {

    private ProgressDialog a;

    public HomeFindSecretItem(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public HomeFindSecretItem(Activity Activity1) {
        super((Context) Activity1, "\u795E\u79D8\u529F\u80FD", 2130837831, 2130837826, null);
    }

    static ProgressDialog a(HomeFindSecretItem HomeFindSecretItem1) {
        return HomeFindSecretItem1.a;
    }

    private boolean b() {
        boolean boolean1;

        if (!com.clilystudio.netbook.hpay100.a.a.a(getContext(), "KEY_SECRET_UNLOCKED", false)) {
            Context Context2 = getContext();
            String String3 = am.n(Context2);
            String String4 = com.umeng.a.b.b(Context2, "switch_secret_to_random");
            int int5;

            label_41:
            {
                if (String4 != null && String4.length() > 0) {
                    String[] String_1darray6 = String4.split(",");
                    int int7 = String_1darray6.length;
                    int int8 = 0;

                    while (int8 < int7) {
                        if (String_1darray6[int8].equals(String3)) {
                            int5 = 1;
                            break label_41;
                        } else
                            ++int8;
                    }
                }
                int5 = 0;
            }
            boolean1 = false;
            if (int5 == 0)
                return boolean1;
        }
        boolean1 = true;
        return boolean1;
    }

    public final void a() {
        int int1 = 1;

        if (!b()) {
            Context Context2 = getContext();
            String String3 = com.umeng.a.b.b(Context2, "mystery_disabled_at_version");
            String String4 = com.umeng.a.b.b(Context2, "mystery_enable_time");
            String String5 = com.umeng.a.b.b(Context2, "mystery_enable_minute_range");
            int int6 = com.clilystudio.netbook.hpay100.a.a.b(String3, 0);
            int int7 = com.clilystudio.netbook.hpay100.a.a.b(String5, 0);

            if (int6 != am.f(Context2) && !"".equals(String4) && !"0".equals(String4)) {
                Date Date8 = t.a(String4);
                Calendar Calendar9 = Calendar.getInstance();
                Date Date10;
                long long11;

                Calendar9.setTime(Date8);
                Calendar9.add(12, int7);
                Date10 = Calendar9.getTime();
                long11 = new Date().getTime();
                if (long11 <= Date8.getTime() || long11 >= Date10.getTime())
                    int1 = 0;
            } else
                int1 = 0;
        }
        if (int1 != 0) {
            setVisibility(0);
            if (b())
                mIcon.setImageResource(2130837832);
            else
                mIcon.setImageResource(2130837831);
            if (b()) {
                mTitle.setText((CharSequence) "\u968F\u673A\u770B\u4E66");
                mSubFlag.setVisibility(4);
            } else {
                mTitle.setText((CharSequence) "\u795E\u79D8\u529F\u80FD");
                mSubFlag.setVisibility(0);
            }
        } else
            setVisibility(8);
    }
// Error: Internal #201: 
// The following method may not be correct.

    protected final void a(Context Context1, String String2) {
    }
}
