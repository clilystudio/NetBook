package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnTouchListener;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow$OnDismissListener;
import android.widget.TextView;

import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

import java.util.ArrayList;
import java.util.List;

public class GirlTopicListActivity extends BaseActivity {

    private bJ a;
    private bI b;
    private PullToRefreshListView c;
    private ListView e;
    private View f;
    private View g;
    private TextView h;
    private com.clilystudio.netbook.adapter.o i;
    private TextView k;
    private TextView l;
    private ImageView m;
    private ImageView n;
    private String o;
    private String p;
    private boolean q;
    private List j = new ArrayList();
    private com.handmark.pulltorefresh.library.j r = new by(this);

    static PopupWindow a(GirlTopicListActivity GirlTopicListActivity1, boolean boolean2) {
        if (boolean2) {
            View View10 = LayoutInflater.from((Context) GirlTopicListActivity1).inflate(2130903155, null);
            TextView TextView11 = (TextView) View10.findViewById(2131493308);
            TextView TextView12 = (TextView) View10.findViewById(2131493309);
            PopupWindow PopupWindow13;

            if (GirlTopicListActivity1.q)
                TextView12.setTextColor(GirlTopicListActivity1.getResources().getColor(2131427468));
            else if (GirlTopicListActivity1.o.equals("all"))
                TextView11.setTextColor(GirlTopicListActivity1.getResources().getColor(2131427468));
            PopupWindow13 = GirlTopicListActivity1.a(View10);
            View10.setOnTouchListener((View$OnTouchListener) new bE(GirlTopicListActivity1, PopupWindow13));
            TextView11.setOnClickListener((View$OnClickListener) new bF(GirlTopicListActivity1, PopupWindow13));
            TextView12.setOnClickListener((View$OnClickListener) new bG(GirlTopicListActivity1, PopupWindow13));
            return PopupWindow13;
        } else {
            View View3 = LayoutInflater.from((Context) GirlTopicListActivity1).inflate(2130903156, null);
            TextView TextView4 = (TextView) View3.findViewById(2131493308);
            TextView TextView5 = (TextView) View3.findViewById(2131493309);
            TextView TextView6 = (TextView) View3.findViewById(2131493310);
            String String7 = GirlTopicListActivity1.p;
            int int8 = -1;
            PopupWindow PopupWindow9;

            switch (String7.hashCode()) {
                case -234430277:
                    if (String7.equals("updated")) {
                        int8 = 0;
                        break;
                    }
                    break;
                case 1028554472:
                    if (String7.equals("created")) {
                        int8 = 1;
                        break;
                    }
                    break;
                case 1742524449:
                    if (String7.equals("comment-count")) {
                        int8 = 2;
                        break;
                    }
                    break;
                default:
                    break;
            }
            switch (int8) {
                case 0:
                    TextView4.setTextColor(GirlTopicListActivity1.getResources().getColor(2131427468));
                    break;
                case 1:
                    TextView5.setTextColor(GirlTopicListActivity1.getResources().getColor(2131427468));
                    break;
                case 2:
                    TextView6.setTextColor(GirlTopicListActivity1.getResources().getColor(2131427468));
                    break;
                default:
                    break;
            }
            PopupWindow9 = GirlTopicListActivity1.a(View3);
            View3.setOnTouchListener((View$OnTouchListener) new bH(GirlTopicListActivity1, PopupWindow9));
            TextView4.setOnClickListener((View$OnClickListener) new bu(GirlTopicListActivity1, PopupWindow9));
            TextView5.setOnClickListener((View$OnClickListener) new bv(GirlTopicListActivity1, PopupWindow9));
            TextView6.setOnClickListener((View$OnClickListener) new bw(GirlTopicListActivity1, PopupWindow9));
            return PopupWindow9;
        }
    }

    static bI a(GirlTopicListActivity GirlTopicListActivity1, bI bI2) {
        GirlTopicListActivity1.b = bI2;
        return bI2;
    }

    static bJ a(GirlTopicListActivity GirlTopicListActivity1, bJ bJ2) {
        GirlTopicListActivity1.a = bJ2;
        return bJ2;
    }

    static String a(GirlTopicListActivity GirlTopicListActivity1, String String2) {
        GirlTopicListActivity1.o = String2;
        return String2;
    }

    static void a(GirlTopicListActivity GirlTopicListActivity1) {
        if (am.e().getUser().getLv() < 4)
            com.clilystudio.netbook.util.e.a((Activity) GirlTopicListActivity1, 2131034393);
        else
            new ds((Context) GirlTopicListActivity1).c("girl").a().a();
    }

    static ImageView b(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.m;
    }

    static String b(GirlTopicListActivity GirlTopicListActivity1, String String2) {
        GirlTopicListActivity1.p = String2;
        return String2;
    }

    static boolean b(GirlTopicListActivity GirlTopicListActivity1, boolean boolean2) {
        GirlTopicListActivity1.q = boolean2;
        return boolean2;
    }

    static ImageView c(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.n;
    }

    static TextView d(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.h;
    }

    static bI e(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.b;
    }

    static String f(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.o;
    }

    static String g(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.p;
    }

    static bJ h(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.a;
    }

    static ListView i(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.e;
    }

    static List j(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.j;
    }

    static TextView k(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.k;
    }

    static PullToRefreshListView l(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.c;
    }

    static TextView m(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.l;
    }

    static boolean n(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.q;
    }

    static View o(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.g;
    }

    static View p(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.f;
    }

    static com.clilystudio.netbook.adapter.o q(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.i;
    }

    static com.handmark.pulltorefresh.library.j r(GirlTopicListActivity GirlTopicListActivity1) {
        return GirlTopicListActivity1.r;
    }

    static void s(GirlTopicListActivity GirlTopicListActivity1) {
        GirlTopicListActivity1.h.setVisibility(0);
        GirlTopicListActivity1.h.setText((CharSequence) "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u5973\u751F\u8BDD\u9898\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427");
    }

    private PopupWindow a(View View1) {
        PopupWindow PopupWindow2 = new PopupWindow(View1, -1, -1);

        PopupWindow2.setFocusable(true);
        PopupWindow2.setBackgroundDrawable((Drawable) new ColorDrawable(0));
        PopupWindow2.setOutsideTouchable(true);
        PopupWindow2.setOnDismissListener((PopupWindow$OnDismissListener) new bx(this));
        return PopupWindow2;
    }

    protected void onCreate(Bundle Bundle1) {
        View View2;
        View View3;
        bJ bJ4;
        String[] String_1darray5;

        super.onCreate(Bundle1);
        setContentView(2130903104);
        a("\u5973\u751F\u533A", 2130837866, (aa) new bt(this), "\u7F16\u8F91\u8BDD\u9898");
        if (Bundle1 != null) {
            o = Bundle1.getString("savedGirlDuration");
            p = Bundle1.getString("savedGirlSort");
        } else {
            o = "all";
            p = "updated";
        }
        g = findViewById(2131493085);
        h = (TextView) findViewById(2131493100);
        c = (PullToRefreshListView) findViewById(2131493099);
        c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        View2 = findViewById(2131493376);
        View3 = findViewById(2131493380);
        k = (TextView) findViewById(2131493378);
        l = (TextView) findViewById(2131493381);
        m = (ImageView) findViewById(2131493379);
        n = (ImageView) findViewById(2131493382);
        View2.setOnClickListener((View$OnClickListener) new bz(this));
        View3.setOnClickListener((View$OnClickListener) new bA(this));
        e = (ListView) c.h();
        if (com.clilystudio.netbook.hpay100.a.a.j())
            e.setFooterDividersEnabled(false);
        f = LayoutInflater.from((Context) this).inflate(2130903325, null);
        f.setVisibility(8);
        e.addFooterView(f);
        c.setOnRefreshListener((com.handmark.pulltorefresh.library.k) new bB(this));
        e.setOnItemClickListener((AdapterView$OnItemClickListener) new bD(this));
        i = new com.clilystudio.netbook.adapter.o(getLayoutInflater());
        e.setAdapter((ListAdapter) i);
        a = new bJ(this, (byte) 0);
        bJ4 = a;
        String_1darray5 = new String[2];
        String_1darray5[0] = o;
        String_1darray5[1] = p;
        bJ4.b(String_1darray5);
        com.clilystudio.netbook.hpay100.a.a.u((Context) this);
        com.clilystudio.netbook.umeng.a.b.a((Context) this, "GirlTopicListActivity_Opened");
    }

    protected void onNewIntent(Intent Intent1) {
        super.onNewIntent(Intent1);
        c.setRefreshing();
    }

    protected void onSaveInstanceState(Bundle Bundle1) {
        super.onSaveInstanceState(Bundle1);
        Bundle1.putString("savedGirlDuration", o);
        Bundle1.putString("savedGirlSort", p);
    }
}
