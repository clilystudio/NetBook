package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.PurchaseChapterResult;
import com.clilystudio.netbook.ui.SmartImageView;

import java.text.SimpleDateFormat;

import me.biubiubiu.justifytext.library.JustifyTextView;

public final class o {

    private static final SimpleDateFormat a = new SimpleDateFormat("HH:mm");
    private Activity b;     // final access specifier removed
    private bZ c;     // final access specifier removed
    private n d;
    private boolean e;
    private View f;
    private TextView g;
    private TextView h;
    private TextView i;
    private View j;
    private ImageView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private TextView o;
    private boolean p;
    private G q;
    private H r;
    private F s;
    private Button u;
    private boolean t = false;
    public o(Activity Activity1, bZ bZ2) {
        b = Activity1;
        c = bZ2;
        f = b.getLayoutInflater().inflate(2130903367, null);
        g = (TextView) f.findViewById(2131493605);
        h = (TextView) f.findViewById(2131493913);
        i = (TextView) f.findViewById(2131493915);
        j = f.findViewById(2131493916);
        k = (ImageView) f.findViewById(2131493917);
        l = (TextView) f.findViewById(2131493918);
        m = (TextView) f.findViewById(2131493919);
        n = (TextView) f.findViewById(2131493920);
        o = (TextView) f.findViewById(2131493921);
        f.setPadding(c.c, c.d, c.c, c.d);
        l();
        m();
        k();
        com.clilystudio.netbook.event.i.a().a(this);
    }

    static Activity a(o o1) {
        return o1.b;
    }

    static void a(o o1, PurchaseChapterResult PurchaseChapterResult2, boolean boolean3) {
        if (PurchaseChapterResult2 == null)
            com.clilystudio.netbook.util.e.a(o1.b, "\u652F\u4ED8\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5");
        else if (PurchaseChapterResult2.isOk()) {
            String String9;

            o1.d.q().a().e().put(PurchaseChapterResult2.getChapterId(), PurchaseChapterResult2.getKey());
            com.clilystudio.netbook.hpay100.a.a.a(((ReaderActivity) o1.b).l(), o1.d.q().a().e());
            String9 = (String) o1.d.q().a().e().get(o1.d.a().getId());
            if (String9 != null) {
                o1.d.a().setKey(String9);
                o1.d.g();
                o1.d.a(0);
                com.clilystudio.netbook.hpay100.a.a.a(((ReaderActivity) o1.b).l(), ((ReaderActivity) o1.b).f(), am.e(o1.d.a().getLink()), (Chapter) o1.d.a());
            }
            if (o1.e)
                ;
            if (o1.b instanceof ReaderActivity)
                ((ReaderActivity) o1.b).g();
            else
                o1.e();
        } else if (PurchaseChapterResult2.getCode().equals("ITEM_ALREADY_PURCHASED")) {
            String String4 = (String) o1.d.q().a().e().get(o1.d.a().getId());

            if (String4 != null) {
                o1.d.a().setKey(String4);
                o1.d.g();
                o1.d.a(0);
                if (o1.b instanceof ReaderActivity)
                    ((ReaderActivity) o1.b).g();
                else
                    o1.e();
            } else {
                E E5 = new E(o1, o1.b, 2131034218, false);
                String[] String_1darray6 = new String[1];

                String_1darray6[0] = o1.d.a().getId();
                E5.b(String_1darray6);
            }
        } else if (PurchaseChapterResult2.getCode().equals("BALANCE_NOT_ENOUGH")) {
            com.clilystudio.netbook.util.e.a(o1.b, "\u4F59\u989D\u4E0D\u8DB3\uFF0C\u8BF7\u5145\u503C");
            com.clilystudio.netbook.event.i.a().c(new com.clilystudio.netbook.event.G());
            o1.e();
        } else
            com.clilystudio.netbook.util.e.a(o1.b, "\u652F\u4ED8\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5");
    }

    static void a(o o1, boolean boolean2) {
        if (o1.u != null) {
            o1.u.setClickable(boolean2);
            o1.u.setEnabled(boolean2);
        }
    }

    static n b(o o1) {
        return o1.d;
    }

    static boolean b(o o1, boolean boolean2) {
        o1.t = boolean2;
        return boolean2;
    }

    static View c(o o1) {
        return o1.j;
    }

    static G d(o o1) {
        return o1.q;
    }

    static H e(o o1) {
        return o1.r;
    }

    static F f(o o1) {
        return o1.s;
    }

    private static boolean o() {
        if (am.e() == null || !com.clilystudio.netbook.hpay100.a.a.a((Context) MyApplication.a(), new StringBuilder("auto_buy_chapter").append(com.clilystudio.netbook.util.I.a).toString(), false))
            return false;
        else
            return true;
    }

    private void a(View View1, Advert Advert2) {
        if (View1 != null && Advert2 != null) {
            SmartImageView SmartImageView3;
            TextView TextView4;
            TextView TextView5;
            Button Button6;

            Advert2.setPosition("read_page");
            Advert2.recordShow((Context) b);
            SmartImageView3 = (SmartImageView) View1.findViewById(2131493908);
            TextView4 = (TextView) View1.findViewById(2131493910);
            TextView5 = (TextView) View1.findViewById(2131493911);
            Button6 = (Button) View1.findViewById(2131493909);
            if (com.clilystudio.netbook.hpay100.a.a.y((Context) b))
                Button6.setVisibility(0);
            if (com.clilystudio.netbook.hpay100.a.a.a((Context) b, "customer_night_theme", false)) {
                View1.setBackgroundResource(2130838073);
                TextView4.setTextColor(b.getResources().getColor(2131427396));
                TextView5.setTextColor(b.getResources().getColor(2131427397));
                Button6.setTextColor(b.getResources().getColor(2131427396));
                SmartImageView3.setAlpha(0.20000000298023224F);
            } else {
                View1.setBackgroundResource(2130838072);
                TextView4.setTextColor(b.getResources().getColor(2131427393));
                TextView5.setTextColor(b.getResources().getColor(2131427394));
                Button6.setTextColor(b.getResources().getColor(2131427548));
                SmartImageView3.setAlpha(1.0F);
            }
            SmartImageView3.setImageBitmap(null);
            SmartImageView3.setImageUrl(Advert2.getFullImg());
            TextView4.setText((CharSequence) Advert2.getTitle());
            TextView5.setText((CharSequence) Advert2.getDesc());
            Button6.setOnClickListener((View$OnClickListener) new z(this));
            View1.setOnClickListener((View$OnClickListener) new A(this, Advert2));
            com.clilystudio.netbook.util.adutil.n.a(Advert2, View1);
        }
    }

    private void a(boolean boolean1) {
        View View2 = f.findViewById(2131493912);
        View View3 = f.findViewById(2131493922);

        if (boolean1) {
            View View4;
            View View5;

            View2.setVisibility(8);
            View3.setVisibility(0);
            View4 = f.findViewById(2131493924);
            View5 = f.findViewById(2131493929);
            ((TextView) View3.findViewById(2131493923)).setText((CharSequence) d.i());
            if (am.g()) {
                TextView TextView6;
                ChapterLink[] ChapterLink_1darray7;
                int int8;
                CheckBox CheckBox9;
                Button Button10;

                View4.setVisibility(0);
                View5.setVisibility(8);
                TextView6 = (TextView) f.findViewById(2131493925);
                ChapterLink_1darray7 = MyApplication.a().b().d();
                if (ChapterLink_1darray7 == null || ChapterLink_1darray7.length == 0)
                    int8 = 0;
                else {
                    int int11 = d.l();

                    if (int11 < 0)
                        int11 = 0;
                    else if (int11 >= ChapterLink_1darray7.length)
                        int11 = -1 + ChapterLink_1darray7.length;
                    int8 = ChapterLink_1darray7[int11].getCurrency();
                }
                TextView6.setText((CharSequence) new StringBuilder().append(int8).toString());
                CheckBox9 = (CheckBox) View4.findViewById(2131493926);
                u = (Button) View4.findViewById(2131493927);
                if (com.clilystudio.netbook.hpay100.a.a.a((Context) b, "user_account_balance", 0) > d.a().getCurrency() || t) {
                    CheckBox9.setVisibility(0);
                    CheckBox9.setChecked(com.clilystudio.netbook.hpay100.a.a.a((Context) b, new StringBuilder("auto_buy_chapter").append(com.clilystudio.netbook.util.I.a).toString(), false));
                    u.setText((CharSequence) "\u8D2D\u4E70\uFF0C\u7EE7\u7EED\u9605\u8BFB");
                    u.setOnClickListener((View$OnClickListener) new s(this, CheckBox9));
                    CheckBox9.setOnClickListener((View$OnClickListener) new t(this));
                } else {
                    CheckBox9.setVisibility(4);
                    u.setText((CharSequence) "\u4F59\u989D\u4E0D\u8DB3\uFF0C\u8BF7\u5145\u503C");
                    u.setOnClickListener((View$OnClickListener) new v(this));
                }
                Button10 = (Button) View4.findViewById(2131493928);
                Button10.setOnClickListener((View$OnClickListener) new x(this));
                if (b instanceof ReaderActivity && !((ReaderActivity) b).m())
                    Button10.setVisibility(8);
            } else {
                View4.setVisibility(8);
                View5.setVisibility(0);
                View5.findViewById(2131493930).setOnClickListener((View$OnClickListener) new y(this));
            }
        } else {
            View2.setVisibility(0);
            View3.setVisibility(8);
            r();
        }
    }

    private boolean a(View View1) {
        try {
            int int3 = h.getLayout().getHeight() + View1.getLayoutParams().height;
            int int4 = c.e;
        } catch (Exception Exception2) {
        }
        return false;
    }

    private void b(int int1) {
        if (k != null)
            k.setImageResource(int1);
    }

    private void b(n n1) {
        if (n1 != null && n1.o() == -1) {
            Reader Reader2 = MyApplication.a().b();

            if (Reader2 != null) {
                String String3 = Reader2.i();

                com.umeng.a.b.a((Context) b, "chapter_load_error", String3);
            }
        }
    }

    private void l() {
        TextView TextView1;

        f.setBackgroundResource(c.h);
        g.setTextColor(c.i);
        h.setTextColor(c.g);
        i.setTextColor(c.i);
        TextView1 = (TextView) f.findViewById(2131493914);
        TextView1.setTextColor(c.i);
        TextView1.setBackgroundResource(c.j);
        ((TextView) f.findViewById(2131493606)).setTextColor(c.i);
    }

    private void m() {
        h.setHeight(c.e);
        h.setTextSize(0, (float) c.a);
        h.setLineSpacing((float) c.b, 1.0F);
    }

    private void n() {
        if (d == null)
            return;
        else {
            switch (d.o()) {
                default:
                    return;
                case -5:
                    p();
                    n.setVisibility(8);
                    l.setText((CharSequence) "\u672C\u6765\u6E90\u6682\u65E0\u8BE5\u5C0F\u8BF4");
                    m.setText((CharSequence) "\u8BF7\u5207\u6362\u5230\u5176\u4ED6\u6765\u6E90");
                    b(2130837937);
                    u();
                    a(false);
                    return;
                case 1:
                    e();
                    return;
                case -1:
                    p();
                    n.setVisibility(0);
                    t();
                    a(false);
                    if (com.clilystudio.netbook.hpay100.a.a.t((Context) b)) {
                        l.setText((CharSequence) "\u8FDE\u63A5\u8D85\u65F6\uFF0C\u518D\u8BD5\u8BD5\uFF1F");
                        m.setText((CharSequence) "\u8BF7\u5237\u65B0\u91CD\u8BD5\u6216\u5207\u6362\u6765\u6E90");
                        b(2130837937);
                        u();
                    } else {
                        l.setText((CharSequence) "\u6CA1\u7F51\uFF0C\u8FDE\u4E0D\u4E0A\u5440");
                        m.setText((CharSequence) "\u8BF7\u68C0\u67E5\u7F51\u7EDC\u540E\u91CD\u8BD5");
                        b(2130837938);
                        o.setVisibility(8);
                        n.setText(2131034471);
                    }
                    return;
                case -3:
                    p();
                    n.setVisibility(0);
                    l.setText((CharSequence) "\u672C\u7AE0\u6682\u65E0\u6587\u5B57");
                    m.setText((CharSequence) "\u672A\u627E\u5230\u672C\u7AE0\u7684\u6587\u5B57\u5185\u5BB9");
                    b(2130837937);
                    t();
                    u();
                    a(false);
                    return;
                case -2:
                    p();
                    l.setText((CharSequence) "\u6B64\u6765\u6E90\u5C1A\u672A\u66F4\u65B0\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5");
                    m.setText((CharSequence) "");
                    b(2130837939);
                    u();
                    a(false);
                    return;
                case -4:
                    p();
                    n.setVisibility(0);
                    l.setText((CharSequence) "\u8FDE\u63A5\u8D85\u65F6\uFF0C\u518D\u8BD5\u8BD5\uFF1F");
                    m.setText((CharSequence) "\u8BF7\u5237\u65B0\u91CD\u8BD5\u6216\u5207\u6362\u6765\u6E90");
                    b(2130837937);
                    n.setOnClickListener((View$OnClickListener) new q(this));
                    u();
                    a(false);
                    return;
                case 0:
                    j.setVisibility(8);
                    g.setText((CharSequence) "");
                    h.setText((CharSequence) "");
                    i.setText((CharSequence) "");
                    a(false);
                    return;
            }
        }
    }

    private void p() {
        j.setVisibility(0);
        g.setText((CharSequence) d.i());
        h.setText((CharSequence) "");
        i.setText((CharSequence) "");
    }

    private boolean q() {
        int int1;

        if (MyApplication.a().d() == 9)
            int1 = 1;
        else
            int1 = 0;
        if (int1 == 0 && d != null && d.l() % 5 == 4 && d.h())
            return true;
        else
            return false;
    }

    private void r() {
        if (e) {
            View View1 = f.findViewById(2131493907);

            if (View1 != null) {
                if (am.q((Context) b) && com.clilystudio.netbook.hpay100.a.a.F((Context) b) && q() && a(View1) && b instanceof ReaderActivity) {
                    Advert Advert2 = com.clilystudio.netbook.util.adutil.n.b((Context) b, "page");

                    if (Advert2 != null && com.clilystudio.netbook.hpay100.a.a.w((Context) b, "rate_zssq_advert_reader_bookinfo")) {
                        View1.setVisibility(0);
                        a(View1, Advert2);
                    } else
                        View1.setVisibility(8);
                    return;
                } else {
                    View1.setVisibility(8);
                    if (e && !com.clilystudio.netbook.hpay100.a.a.a((Context) b, new StringBuilder("remove_ad_toast_showed").append(com.clilystudio.netbook.util.I.a).toString(), false) && q() && a(View1) && !android.support.design.widget.am.r((Context) b)) {
                        com.clilystudio.netbook.util.e.a(b, "\u5DF2\u4E3A\u60A8\u81EA\u52A8\u514D\u9664\u5E7F\u544A");
                        com.clilystudio.netbook.hpay100.a.a.b((Context) b, new StringBuilder("remove_ad_toast_showed").append(com.clilystudio.netbook.util.I.a).toString(), true);
                        return;
                    }
                }
            }
        }
    }

    private void s() {
        View View1 = f.findViewById(2131493907);

        if (View1 != null)
            View1.setVisibility(8);
    }

    private void t() {
        n.setOnClickListener((View$OnClickListener) new B(this));
    }

    private void u() {
        o.setVisibility(0);
        o.setText((CharSequence) "\u66F4\u6362\u6765\u6E90");
        o.setOnClickListener((View$OnClickListener) new r(this));
    }

    public final void a() {
        p = true;
    }

    public final void a(int int1) {
        ((TextView) f.findViewById(2131493914)).setText((CharSequence) String.valueOf(int1));
    }

    public final void a(int int1, int int2) {
        if (h instanceof JustifyTextView)
            ((JustifyTextView) h).setHighLight(int1, int2);
    }

    public final void a(F F1) {
        s = F1;
    }

    public final void a(G G1) {
        q = G1;
    }

    public final void a(H H1) {
        r = H1;
    }

    public final void a(n n1) {
        d = n1;
        e = false;
        n();
        b(n1);
        s();
    }

    public final void a(n n1, boolean boolean2) {
        d = n1;
        e = true;
        n();
        b(n1);
        if (a(n1.a())) {
            I I5;
            String[] String_1darray6;

            com.umeng.a.b.a((Context) b, "paying_page_auto_purchase", com.clilystudio.netbook.util.I.b);
            I5 = new I(this, b, "\u81EA\u52A8\u8D2D\u4E70\u4E2D...");
            String_1darray6 = new String[2];
            String_1darray6[0] = am.e().getToken();
            String_1darray6[1] = n1.a().getId();
            I5.b(String_1darray6);
        }
        if (n1.j() == 0) {
            int int3 = n1.l();
            Reader Reader4 = MyApplication.a().b();

            if (o())
                Reader4.a(int3 + 1, (e) new p(this), true, false);
        }
    }

    public final boolean a(ReaderChapter ReaderChapter1) {
        if (!o())
            return false;
        else if (ReaderChapter1 == null || !ReaderChapter1.isVip())
            return false;
        else if (com.clilystudio.netbook.hpay100.a.a.a((Context) b, "user_account_balance", 0) < ReaderChapter1.getCurrency())
            return false;
        else {
            String String2 = ReaderChapter1.getKey();

            if (String2 == null)
                String2 = (String) d.q().a().e().get(ReaderChapter1.getId());
            if (String2 == null)
                return true;
            else
                return false;
        }
    }

    public final void b() {
        l();
    }

    public final void c() {
        l();
    }

    public final int d() {
        return h.getHeight();
    }

    public final void e() {
        if (d != null) {
            if (f()) {
                if (e)
                    com.umeng.a.b.a((Context) b, "paying_page_show", com.clilystudio.netbook.util.I.b);
                a(true);
            } else {
                TextView TextView1;
                Object[] Object_1darray2;

                if (p)
                    m();
                j.setVisibility(8);
                g.setText((CharSequence) d.i());
                if (c.i())
                    h.setText((CharSequence) d.a((Context) b));
                else
                    h.setText((CharSequence) d.c());
                TextView1 = i;
                Object_1darray2 = new Object[2];
                Object_1darray2[0] = Integer.valueOf(1 + d.j());
                Object_1darray2[1] = Integer.valueOf(d.k());
                TextView1.setText((CharSequence) String.format("%s/%s", Object_1darray2));
                a(false);
            }
        }
    }

    public final boolean f() {
        ChapterLink[] ChapterLink_1darray2;

        try {
            if (d == null)
                return false;
        } catch (Exception Exception1) {
            com.umeng.a.b.a((Context) b, "zhuishu_catch_exception", new StringBuilder("PageBinder_needPay:").append(Exception1.getMessage()).toString());
            return false;
        }
        try {
            ChapterLink_1darray2 = MyApplication.a().b().d();
        } catch (Exception Exception5) {
            com.umeng.a.b.a((Context) b, "zhuishu_catch_exception", new StringBuilder("PageBinder_needPay:").append(Exception5.getMessage()).toString());
            return false;
        }
        if (ChapterLink_1darray2 == null || ChapterLink_1darray2.length == 0)
            return false;
        else {
            int int3;
            String String4;

            try {
                int3 = d.l();
            } catch (Exception Exception6) {
                com.umeng.a.b.a((Context) b, "zhuishu_catch_exception", new StringBuilder("PageBinder_needPay:").append(Exception6.getMessage()).toString());
                return false;
            }
            if (int3 < 0)
                int3 = 0;
            else {
                try {
                    if (int3 >= ChapterLink_1darray2.length)
                        int3 = -1 + ChapterLink_1darray2.length;
                } catch (Exception Exception7) {
                    com.umeng.a.b.a((Context) b, "zhuishu_catch_exception", new StringBuilder("PageBinder_needPay:").append(Exception7.getMessage()).toString());
                    return false;
                }
            }
            try {
                if (!ChapterLink_1darray2[int3].isVip())
                    return false;
            } catch (Exception Exception8) {
                com.umeng.a.b.a((Context) b, "zhuishu_catch_exception", new StringBuilder("PageBinder_needPay:").append(Exception8.getMessage()).toString());
                return false;
            }
            try {
                String4 = d.a().getKey();
            } catch (Exception Exception9) {
                com.umeng.a.b.a((Context) b, "zhuishu_catch_exception", new StringBuilder("PageBinder_needPay:").append(Exception9.getMessage()).toString());
                return false;
            }
            if (String4 == null) {
                try {
                    String4 = (String) d.q().a().e().get(d.a().getId());
                } catch (Exception Exception10) {
                    com.umeng.a.b.a((Context) b, "zhuishu_catch_exception", new StringBuilder("PageBinder_needPay:").append(Exception10.getMessage()).toString());
                    return false;
                }
                if (String4 != null) {
                    try {
                        d.a().setKey(String4);
                    } catch (Exception Exception11) {
                        com.umeng.a.b.a((Context) b, "zhuishu_catch_exception", new StringBuilder("PageBinder_needPay:").append(Exception11.getMessage()).toString());
                        return false;
                    }
                }
            }
            if (String4 == null)
                return true;
            else
                return false;
        }
        return false;
    }

    public final void g() {
        if (e)
            com.umeng.a.b.a((Context) b, "paying_page_cancel", com.clilystudio.netbook.util.I.b);
    }

    public final void h() {
        if (!e) {
            View View1 = f.findViewById(2131493907);

            if (View1 != null) {
                View1.setVisibility(8);
                return;
            }
        }
    }

    public final View i() {
        return f;
    }

    public final n j() {
        return d;
    }

    public final void k() {
        ((TextView) f.findViewById(2131493606)).setText((CharSequence) a.format(Long.valueOf(System.currentTimeMillis())));
    }

    public final void onHideAdEvent(com.clilystudio.netbook.event.s s1) {
        s();
    }

    public final void onLoginEvent(com.clilystudio.netbook.event.t t1) {
        if (e) {
            Account Account2 = t1.a();

            if (Account2 != null)
                new D(this, b, "\u6B63\u5728\u83B7\u53D6\u8D44\u4EA7\u4FE1\u606F...", Account2.getToken()).b(new Void[0]);
        }
    }

    public final void onPayFinish(com.clilystudio.netbook.event.y y1) {
        if (e && y1.a()) {
            C C2 = new C(this, b, "\u6B63\u5728\u66F4\u65B0\u8D44\u4EA7\u4FE1\u606F...");
            String[] String_1darray3 = new String[1];

            String_1darray3[0] = am.e().getToken();
            C2.b(String_1darray3);
        }
    }

    public final void onRemoveAdEvent$2234193(com.clilystudio.netbook.hpay100.a.a a1) {
        if (e)
            f.findViewById(2131493907).setVisibility(8);
    }

    public final void onShowThirdAd(com.clilystudio.netbook.event.B B1) {
        if (B1 != null && am.q((Context) b) && B1.b().equals("page")) {
            View View2 = f.findViewById(2131493907);

            if (View2 != null && com.clilystudio.netbook.hpay100.a.a.F((Context) b) && q() && a(View2) && b instanceof ReaderActivity) {
                Advert Advert3 = B1.a();

                if (Advert3 != null) {
                    View2.setVisibility(0);
                    a(View2, Advert3);
                    return;
                }
            }
        }
    }

    public final void onThemeChanged(com.clilystudio.netbook.event.C C1) {
        r();
    }
}
