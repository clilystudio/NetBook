package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
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

public class CommonPostListActivity extends BaseActivity {

    private TextView c;
    private TextView e;
    private PullToRefreshListView f;
    private ImageView g;
    private ImageView h;
    private ListView i;
    private View j;
    private TextView k;
    private bi l;
    private bh m;
    private View n;
    private com.clilystudio.netbook.adapter.l p;
    private boolean q;
    private String r;
    private String a = "all";
    private String b = "updated";
    private List o = new ArrayList();
    private com.handmark.pulltorefresh.library.j s = new aX(this);
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2) {
    }

    static PopupWindow a(CommonPostListActivity CommonPostListActivity1, int int2) {
        PopupWindow PopupWindow3;

        if (int2 == 0) {
            View View11 = LayoutInflater.from((Context) CommonPostListActivity1).inflate(2130903203, null);
            TextView TextView12 = (TextView) View11.findViewById(2131493308);
            TextView TextView13 = (TextView) View11.findViewById(2131493309);
            PopupWindow PopupWindow14;

            if (CommonPostListActivity1.q)
                TextView13.setTextColor(CommonPostListActivity1.getResources().getColor(2131427468));
            else if (CommonPostListActivity1.a.equals("all"))
                TextView12.setTextColor(CommonPostListActivity1.getResources().getColor(2131427468));
            PopupWindow14 = CommonPostListActivity1.a(View11);
            View11.setOnTouchListener((View$OnTouchListener) new bd(CommonPostListActivity1, PopupWindow14));
            TextView12.setOnClickListener((View$OnClickListener) new be(CommonPostListActivity1, PopupWindow14));
            TextView13.setOnClickListener((View$OnClickListener) new bf(CommonPostListActivity1, PopupWindow14));
            PopupWindow3 = PopupWindow14;
        } else {
            PopupWindow3 = null;
            if (int2 == 1) {
                View View4 = LayoutInflater.from((Context) CommonPostListActivity1).inflate(2130903204, null);
                TextView TextView5 = (TextView) View4.findViewById(2131493308);
                TextView TextView6 = (TextView) View4.findViewById(2131493309);
                TextView TextView7 = (TextView) View4.findViewById(2131493310);
                String String8 = CommonPostListActivity1.b;
                int int9 = -1;
                PopupWindow PopupWindow10;

                switch (String8.hashCode()) {
                    case -234430277:
                        if (String8.equals("updated")) {
                            int9 = 0;
                            break;
                        }
                        break;
                    case 1028554472:
                        if (String8.equals("created")) {
                            int9 = 1;
                            break;
                        }
                        break;
                    case 1742524449:
                        if (String8.equals("comment-count")) {
                            int9 = 2;
                            break;
                        }
                        break;
                    default:
                        break;
                }
                switch (int9) {
                    case 0:
                        TextView5.setTextColor(CommonPostListActivity1.getResources().getColor(2131427468));
                        break;
                    case 1:
                        TextView6.setTextColor(CommonPostListActivity1.getResources().getColor(2131427468));
                        break;
                    case 2:
                        TextView7.setTextColor(CommonPostListActivity1.getResources().getColor(2131427468));
                        break;
                    default:
                        break;
                }
                PopupWindow10 = CommonPostListActivity1.a(View4);
                View4.setOnTouchListener((View$OnTouchListener) new bg(CommonPostListActivity1, PopupWindow10));
                TextView5.setOnClickListener((View$OnClickListener) new aT(CommonPostListActivity1, PopupWindow10));
                TextView6.setOnClickListener((View$OnClickListener) new aU(CommonPostListActivity1, PopupWindow10));
                TextView7.setOnClickListener((View$OnClickListener) new aV(CommonPostListActivity1, PopupWindow10));
                return PopupWindow10;
            }
        }
        return PopupWindow3;
    }

    static bh a(CommonPostListActivity CommonPostListActivity1, bh bh2) {
        CommonPostListActivity1.m = bh2;
        return bh2;
    }

    static bi a(CommonPostListActivity CommonPostListActivity1, bi bi2) {
        CommonPostListActivity1.l = bi2;
        return bi2;
    }

    static String a(CommonPostListActivity CommonPostListActivity1, String String2) {
        CommonPostListActivity1.a = String2;
        return String2;
    }

    static void a(CommonPostListActivity CommonPostListActivity1) {
        new ds((Context) CommonPostListActivity1).c(CommonPostListActivity1.r).a().a();
    }

    static boolean a(CommonPostListActivity CommonPostListActivity1, boolean boolean2) {
        CommonPostListActivity1.q = boolean2;
        return boolean2;
    }

    static TextView b(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.k;
    }

    static String b(CommonPostListActivity CommonPostListActivity1, String String2) {
        CommonPostListActivity1.b = String2;
        return String2;
    }

    static bh c(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.m;
    }

    static String d(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.a;
    }

    static String e(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.b;
    }

    static bi f(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.l;
    }

    static ListView g(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.i;
    }

    static List h(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.o;
    }

    static TextView i(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.c;
    }

    static PullToRefreshListView j(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.f;
    }

    static TextView k(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.e;
    }

    static ImageView l(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.g;
    }

    static ImageView m(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.h;
    }

    static String n(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.r;
    }

    static boolean o(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.q;
    }

    static View p(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.n;
    }

    static View q(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.j;
    }

    static com.clilystudio.netbook.adapter.l r(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.p;
    }

    static com.handmark.pulltorefresh.library.j s(CommonPostListActivity CommonPostListActivity1) {
        return CommonPostListActivity1.s;
    }

    static void t(CommonPostListActivity CommonPostListActivity1) {
        CommonPostListActivity1.f.setVisibility(8);
        CommonPostListActivity1.k.setVisibility(0);
        CommonPostListActivity1.k.setText((CharSequence) "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u5E16\u5B50\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427");
    }

    private PopupWindow a(View View1) {
        PopupWindow PopupWindow2 = new PopupWindow(View1, -1, -1);

        PopupWindow2.setFocusable(true);
        PopupWindow2.setBackgroundDrawable((Drawable) new ColorDrawable(0));
        PopupWindow2.setOutsideTouchable(true);
        PopupWindow2.setOnDismissListener((PopupWindow$OnDismissListener) new aW(this));
        return PopupWindow2;
    }

    protected void onCreate(Bundle Bundle1) {
        String String2;
        String String3;
        ImageView ImageView4;
        ImageView ImageView5;
        bi bi6;
        String[] String_1darray7;
        String String9;

        super.onCreate(Bundle1);
        setContentView(2130903096);
        r = getIntent().getStringExtra("post_block_key");
        if (r == null)
            r = "ramble";
        if ("android-feedback".equals(r)) {
            String2 = "\u610F\u89C1\u53CD\u9988\u533A";
            String3 = "\u5199\u53CD\u9988";
        } else {
            String2 = "\u7EFC\u5408\u8BA8\u8BBA\u533A";
            String3 = "\u5199\u8BC4\u8BBA";
        }
        a(String2, 2130837866, (aa) new aS(this), String3);
        if (Bundle1 != null) {
            a = Bundle1.getString("savedReviewDur");
            b = Bundle1.getString("savedReviewSort");
        }
        f = (PullToRefreshListView) findViewById(2131493099);
        f.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        n = findViewById(2131493085);
        k = (TextView) findViewById(2131493100);
        ImageView4 = (ImageView) findViewById(2131493379);
        ImageView5 = (ImageView) findViewById(2131493382);
        g = ImageView4;
        h = ImageView5;
        c = (TextView) findViewById(2131493378);
        e = (TextView) findViewById(2131493381);
        findViewById(2131493376).setOnClickListener((View$OnClickListener) new aY(this, ImageView4));
        findViewById(2131493380).setOnClickListener((View$OnClickListener) new aZ(this, ImageView5));
        i = (ListView) f.h();
        j = LayoutInflater.from((Context) this).inflate(2130903325, null);
        if (com.clilystudio.netbook.hpay100.a.a.j())
            i.setFooterDividersEnabled(false);
        i.addFooterView(j);
        j.setVisibility(8);
        f.setOnRefreshListener((com.handmark.pulltorefresh.library.k) new ba(this));
        i.setOnItemClickListener((AdapterView$OnItemClickListener) new bc(this));
        p = new com.clilystudio.netbook.adapter.l(getLayoutInflater());
        i.setAdapter((ListAdapter) p);
        l = new bi(this, (byte) 0);
        bi6 = l;
        String_1darray7 = new String[2];
        String_1darray7[0] = a;
        String_1darray7[1] = b;
        bi6.b(String_1darray7);
        com.clilystudio.netbook.hpay100.a.a.u((Context) this);
        String9 = r;
        if ("ramble".equals(String9))
            com.umeng.a.b.a((Context) this, "DiscussListActivity_Opened");
        else if ("android-feedback".equals(String9)) {
            com.umeng.a.b.a((Context) this, "CommonPostListActivity_Feedback_Opened");
            return;
        }
    }

    protected void onNewIntent(Intent Intent1) {
        super.onNewIntent(Intent1);
        f.setRefreshing();
    }

    protected void onSaveInstanceState(Bundle Bundle1) {
        super.onSaveInstanceState(Bundle1);
        Bundle1.putString("savedReviewDur", a);
        Bundle1.putString("savedReviewSort", b);
    }
}
