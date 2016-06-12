package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.event.m;
import com.clilystudio.netbook.ui.BaseActivity;

public class FeedSettingActivity extends BaseActivity {

    private TextView a;
    private int b;

    static int a(FeedSettingActivity FeedSettingActivity1) {
        return FeedSettingActivity1.b;
    }

    static void a(FeedSettingActivity FeedSettingActivity1, int int2) {
        int int3 = 0;
        int int4 = com.clilystudio.netbook.hpay100.a.a.d(int2);
        int[] int_1darray5 = {2131493425, 2131493426, 2131493427, 2131493428, 2131493429};
        View View6 = FeedSettingActivity1.getLayoutInflater().inflate(2130903206, null, false);
        uk.me.lewisdeane.ldialogs.h h7 = new uk.me.lewisdeane.ldialogs.h((Context) FeedSettingActivity1);
        AlertDialog AlertDialog8;

        h7.d = "\u9009\u62E9\u517B\u80A5\u7AE0\u8282\u6570";
        AlertDialog8 = h7.a(View6).b("\u53D6\u6D88", null).a();
        ((RadioGroup) View6.findViewById(2131493424)).check(int_1darray5[int4]);
        while (int3 < 5) {
            ((RadioButton) View6.findViewById(int_1darray5[int3])).setOnClickListener((View$OnClickListener) new i(FeedSettingActivity1, AlertDialog8, int3, int4));
            ++int3;
        }
        AlertDialog8.show();
    }

    static void b(FeedSettingActivity FeedSettingActivity1, int int2) {
        TextView TextView3;
        String String4;
        Object[] Object_1darray5;

        FeedSettingActivity1.b = com.clilystudio.netbook.hpay100.a.a.e(int2);
        TextView3 = FeedSettingActivity1.a;
        String4 = FeedSettingActivity1.getString(2131034327);
        Object_1darray5 = new Object[1];
        Object_1darray5[0] = Integer.valueOf(FeedSettingActivity1.b);
        TextView3.setText((CharSequence) String.format(String4, Object_1darray5));
        com.clilystudio.netbook.hpay100.a.a.b((Context) FeedSettingActivity1, "feed_chapter_count", FeedSettingActivity1.b);
        com.clilystudio.netbook.event.i.a().c(new m());
    }

    public void onCreate(Bundle Bundle1) {
        View View2;
        TextView TextView3;
        String String4;
        Object[] Object_1darray5;

        super.onCreate(Bundle1);
        setContentView(2130903100);
        b(2131034384);
        if (Bundle1 != null)
            b = Bundle1.getInt("savedCurrentCount", 50);
        else
            b = com.clilystudio.netbook.hpay100.a.a.a((Context) this, "feed_chapter_count", 50);
        View2 = findViewById(2131493128);
        a = (TextView) findViewById(2131493130);
        TextView3 = a;
        String4 = getString(2131034327);
        Object_1darray5 = new Object[1];
        Object_1darray5[0] = Integer.valueOf(b);
        TextView3.setText((CharSequence) String.format(String4, Object_1darray5));
        View2.setOnClickListener((View$OnClickListener) new h(this));
    }

    protected void onSaveInstanceState(Bundle Bundle1) {
        super.onSaveInstanceState(Bundle1);
        Bundle1.putInt("savedCurrentCount", b);
    }
}
