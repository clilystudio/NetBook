package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.PayChargeRecord$Order;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PayChargeActivity extends BaseLoadingActivity {
    private M a;
    private View b;
    private ScrollLoadListView c;
    private List<PayChargeRecord$Order> e = new ArrayList<PayChargeRecord$Order>();
    private List<PayChargeRecord$Order> f = new ArrayList<PayChargeRecord$Order>();
    private String g;
    private av h;

    public PayChargeActivity() {
        this.h = new L(this);
    }

    public static Intent a(Context context, String string, String string2) {
        return new d().a(context, PayChargeActivity.class).a("token_key", string).a("title_key", string2).a();
    }

    static /* synthetic */ List a(PayChargeActivity payChargeActivity) {
        return payChargeActivity.e;
    }

    static /* synthetic */ View b(PayChargeActivity payChargeActivity) {
        return payChargeActivity.b;
    }

    static /* synthetic */ void c(PayChargeActivity payChargeActivity) {
        if (payChargeActivity.e == null || payChargeActivity.e.size() == 0) {
            return;
        }
        payChargeActivity.f.clear();
        payChargeActivity.f.addAll(payChargeActivity.e);
        Date date = new Date();
        Date[] arrdate = new Date[]{new Date(date.getTime() - 518400000), date};
        int n = payChargeActivity.a(0, "\u4e00\u5468\u5185", arrdate);
        Date[] arrdate2 = new Date[]{new Date(date.getTime() - 2505600000L), new Date(date.getTime() - 604800000)};
        int n2 = payChargeActivity.a(n, "\u4e00\u5468\u524d", arrdate2);
        Date[] arrdate3 = new Date[]{new Date(date.getTime() - 15465600000L), new Date(date.getTime() - 2592000000L)};
        int n3 = payChargeActivity.a(n2, "\u4e00\u6708\u524d", arrdate3);
        Date[] arrdate4 = new Date[]{new Date(date.getTime() - 31449600000L), new Date(date.getTime() - 15552000000L)};
        int n4 = payChargeActivity.a(n3, "\u534a\u5e74\u524d", arrdate4);
        Date[] arrdate5 = new Date[]{new Date(0), new Date(date.getTime() - 31536000000L)};
        payChargeActivity.a(n4, "\u4e00\u5e74\u524d", arrdate5);
    }

    static /* synthetic */ List d(PayChargeActivity payChargeActivity) {
        return payChargeActivity.f;
    }

    static /* synthetic */ M e(PayChargeActivity payChargeActivity) {
        return payChargeActivity.a;
    }

    static /* synthetic */ ScrollLoadListView f(PayChargeActivity payChargeActivity) {
        return payChargeActivity.c;
    }

    static /* synthetic */ av g(PayChargeActivity payChargeActivity) {
        return payChargeActivity.h;
    }

    static /* synthetic */ String h(PayChargeActivity payChargeActivity) {
        return payChargeActivity.g;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ int a(int n, String string, Date... arrdate) {
        if (n >= this.f.size()) {
            return Integer.MAX_VALUE;
        }
        if (t.a((Date) this.f.get(n).getCreated(), (Date[]) arrdate)) {
            PayChargeRecord$Order payChargeRecord$Order = new PayChargeRecord$Order();
            payChargeRecord$Order.setPayType("time_flag");
            payChargeRecord$Order.setTimeflag(string);
            this.f.add(n, payChargeRecord$Order);
            ++n;
        }
        while (n < this.f.size()) {
            if (!t.a((Date) this.f.get(n).getCreated(), (Date[]) arrdate)) return n;
            ++n;
        }
        return n;
    }

    @Override
    protected final void b() {
        this.i();
        O o = new O(this, 0);
        String[] arrstring = new String[]{this.g};
        o.b(arrstring);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(2130903386);
        TextView textView = (TextView) this.findViewById(2131493104);
        textView.setGravity(1);
        textView.setText("\u60a8\u8fd8\u6ca1\u6709\u5145\u503c\u8bb0\u5f55");
        textView.setCompoundDrawablesWithIntrinsicBounds(null, this.getResources().getDrawable(2130838029), null, null);
        textView.setTextSize(2, this.getResources().getDimension(2131099793) / 3.0f);
        textView.setCompoundDrawablePadding((int) this.getResources().getDimension(2131099721));
        this.b(this.getIntent().getStringExtra("title_key"));
        this.g = this.getIntent().getStringExtra("token_key");
        this.b = LayoutInflater.from(this).inflate(2130903325, null);
        this.b.setVisibility(View.GONE);
        this.c = (ScrollLoadListView) this.findViewById(2131493981);
        this.c.addFooterView(this.b);
        this.c.setDividerHeight(0);
        this.c.setOnItemClickListener(new K(this));
        this.a = new M(this, this.e);
        this.c.setAdapter(this.a);
        this.b();
    }
}
