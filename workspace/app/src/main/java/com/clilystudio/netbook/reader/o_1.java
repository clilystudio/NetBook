package com.clilystudio.netbook.reader;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.PurchaseChapterResult;
import com.clilystudio.netbook.ui.SmartImageView;
import com.umeng.a.b;

import java.text.SimpleDateFormat;

import me.biubiubiu.justifytext.library.JustifyTextView;

public final class o {
    private static final SimpleDateFormat a = new SimpleDateFormat("HH:mm");
    private final Activity b;
    private final bZ c;
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
    private boolean t = false;
    private Button u;

    public o(Activity activity, bZ bZ2) {
        this.b = activity;
        this.c = bZ2;
        this.f = this.b.getLayoutInflater().inflate(2130903367, null);
        this.g = (TextView) this.f.findViewById(2131493605);
        this.h = (TextView) this.f.findViewById(2131493913);
        this.i = (TextView) this.f.findViewById(2131493915);
        this.j = this.f.findViewById(2131493916);
        this.k = (ImageView) this.f.findViewById(2131493917);
        this.l = (TextView) this.f.findViewById(2131493918);
        this.m = (TextView) this.f.findViewById(2131493919);
        this.n = (TextView) this.f.findViewById(2131493920);
        this.o = (TextView) this.f.findViewById(2131493921);
        this.f.setPadding(this.c.c, this.c.d, this.c.c, this.c.d);
        this.l();
        this.m();
        this.k();
        i.a().a(this);
    }

    static /* synthetic */ Activity a(o o2) {
        return o2.b;
    }

    static /* synthetic */ void a(o o2, PurchaseChapterResult purchaseChapterResult, boolean bl) {
        if (purchaseChapterResult == null) {
            com.clilystudio.netbook.util.e.a(o2.b, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        if (purchaseChapterResult.isOk()) {
            o2.d.q().a().e().put(purchaseChapterResult.getChapterId(), purchaseChapterResult.getKey());
            a.a(((ReaderActivity) o2.b).l(), o2.d.q().a().e());
            String string = o2.d.q().a().e().get(o2.d.a().getId());
            if (string != null) {
                o2.d.a().setKey(string);
                o2.d.g();
                o2.d.a(0);
                a.a(((ReaderActivity) o2.b).l(), ((ReaderActivity) o2.b).f(), am.e(o2.d.a().getLink()), o2.d.a());
            }
            if (o2.e) {
                // empty if block
            }
            if (o2.b instanceof ReaderActivity) {
                ((ReaderActivity) o2.b).g();
                return;
            }
            o2.e();
            return;
        }
        if (purchaseChapterResult.getCode().equals("ITEM_ALREADY_PURCHASED")) {
            String string = o2.d.q().a().e().get(o2.d.a().getId());
            if (string != null) {
                o2.d.a().setKey(string);
                o2.d.g();
                o2.d.a(0);
                if (o2.b instanceof ReaderActivity) {
                    ((ReaderActivity) o2.b).g();
                    return;
                }
                o2.e();
                return;
            }
            E e2 = new E(o2, o2.b, 2131034218, false);
            String[] arrstring = new String[]{o2.d.a().getId()};
            e2.b(arrstring);
            return;
        }
        if (purchaseChapterResult.getCode().equals("BALANCE_NOT_ENOUGH")) {
            com.clilystudio.netbook.util.e.a(o2.b, "\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u5145\u503c");
            i.a().c(new com.clilystudio.netbook.event.G());
            o2.e();
            return;
        }
        com.clilystudio.netbook.util.e.a(o2.b, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
    }

    static /* synthetic */ void a(o o2, boolean bl) {
        if (o2.u != null) {
            o2.u.setClickable(bl);
            o2.u.setEnabled(bl);
        }
    }

    static /* synthetic */ n b(o o2) {
        return o2.d;
    }

    static /* synthetic */ boolean b(o o2, boolean bl) {
        o2.t = bl;
        return bl;
    }

    static /* synthetic */ View c(o o2) {
        return o2.j;
    }

    static /* synthetic */ G d(o o2) {
        return o2.q;
    }

    static /* synthetic */ H e(o o2) {
        return o2.r;
    }

    static /* synthetic */ F f(o o2) {
        return o2.s;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static boolean o() {
        if (am.e() == null || !a.a((Context) MyApplication.a(), "auto_buy_chapter" + com.clilystudio.netbook.util.I.a, false)) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value = 11)
    private void a(View view, Advert advert) {
        if (view == null || advert == null) {
            return;
        }
        advert.setPosition("read_page");
        advert.recordShow(this.b);
        SmartImageView smartImageView = (SmartImageView) view.findViewById(2131493908);
        TextView textView = (TextView) view.findViewById(2131493910);
        TextView textView2 = (TextView) view.findViewById(2131493911);
        Button button = (Button) view.findViewById(2131493909);
        if (a.y(this.b)) {
            button.setVisibility(0);
        }
        if (a.a((Context) this.b, "customer_night_theme", false)) {
            view.setBackgroundResource(2130838073);
            textView.setTextColor(this.b.getResources().getColor(2131427396));
            textView2.setTextColor(this.b.getResources().getColor(2131427397));
            button.setTextColor(this.b.getResources().getColor(2131427396));
            smartImageView.setAlpha(0.2f);
        } else {
            view.setBackgroundResource(2130838072);
            textView.setTextColor(this.b.getResources().getColor(2131427393));
            textView2.setTextColor(this.b.getResources().getColor(2131427394));
            button.setTextColor(this.b.getResources().getColor(2131427548));
            smartImageView.setAlpha(1.0f);
        }
        smartImageView.setImageBitmap(null);
        smartImageView.setImageUrl(advert.getFullImg());
        textView.setText(advert.getTitle());
        textView2.setText(advert.getDesc());
        button.setOnClickListener(new z(this));
        view.setOnClickListener(new A(this, advert));
        com.clilystudio.netbook.util.adutil.n.a(advert, view);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        int n2;
        View view = this.f.findViewById(2131493912);
        View view2 = this.f.findViewById(2131493922);
        if (!bl) {
            view.setVisibility(0);
            view2.setVisibility(8);
            this.r();
            return;
        }
        view.setVisibility(8);
        view2.setVisibility(0);
        View view3 = this.f.findViewById(2131493924);
        View view4 = this.f.findViewById(2131493929);
        ((TextView) view2.findViewById(2131493923)).setText(this.d.i());
        if (!am.g()) {
            view3.setVisibility(8);
            view4.setVisibility(0);
            view4.findViewById(2131493930).setOnClickListener(new y(this));
            return;
        }
        view3.setVisibility(0);
        view4.setVisibility(8);
        TextView textView = (TextView) this.f.findViewById(2131493925);
        ChapterLink[] arrchapterLink = MyApplication.a().b().d();
        if (arrchapterLink == null || arrchapterLink.length == 0) {
            n2 = 0;
        } else {
            int n3 = this.d.l();
            if (n3 < 0) {
                n3 = 0;
            } else if (n3 >= arrchapterLink.length) {
                n3 = -1 + arrchapterLink.length;
            }
            n2 = arrchapterLink[n3].getCurrency();
        }
        textView.setText("" + n2);
        CheckBox checkBox = (CheckBox) view3.findViewById(2131493926);
        this.u = (Button) view3.findViewById(2131493927);
        if (a.a((Context) this.b, "user_account_balance", 0) > this.d.a().getCurrency() || this.t) {
            checkBox.setVisibility(0);
            checkBox.setChecked(a.a((Context) this.b, "auto_buy_chapter" + com.clilystudio.netbook.util.I.a, false));
            this.u.setText("\u8d2d\u4e70\uff0c\u7ee7\u7eed\u9605\u8bfb");
            this.u.setOnClickListener(new s(this, checkBox));
            checkBox.setOnClickListener(new t(this));
        } else {
            checkBox.setVisibility(4);
            this.u.setText("\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u5145\u503c");
            this.u.setOnClickListener(new v(this));
        }
        Button button = (Button) view3.findViewById(2131493928);
        button.setOnClickListener(new x(this));
        if (this.b instanceof ReaderActivity && !((ReaderActivity) this.b).m()) {
            button.setVisibility(8);
        }
    }

    private boolean a(View view) {
        try {
            int n2 = this.h.getLayout().getHeight() + view.getLayoutParams().height;
            int n3 = this.c.e;
            if (n2 < n3) {
                return true;
            }
        } catch (Exception var2_4) {
            // empty catch block
        }
        return false;
    }

    private void b(int n2) {
        if (this.k != null) {
            this.k.setImageResource(n2);
        }
    }

    private void b(n n2) {
        Reader reader;
        if (n2 != null && n2.o() == -1 && (reader = MyApplication.a().b()) != null) {
            String string = reader.i();
            b.a(this.b, "chapter_load_error", string);
        }
    }

    private void l() {
        this.f.setBackgroundResource(this.c.h);
        this.g.setTextColor(this.c.i);
        this.h.setTextColor(this.c.g);
        this.i.setTextColor(this.c.i);
        TextView textView = (TextView) this.f.findViewById(2131493914);
        textView.setTextColor(this.c.i);
        textView.setBackgroundResource(this.c.j);
        ((TextView) this.f.findViewById(2131493606)).setTextColor(this.c.i);
    }

    private void m() {
        this.h.setHeight(this.c.e);
        this.h.setTextSize(0, this.c.a);
        this.h.setLineSpacing(this.c.b, 1.0f);
    }

    private void n() {
        if (this.d == null) {
            return;
        }
        switch (this.d.o()) {
            default: {
                return;
            }
            case -5: {
                this.p();
                this.n.setVisibility(8);
                this.l.setText("\u672c\u6765\u6e90\u6682\u65e0\u8be5\u5c0f\u8bf4");
                this.m.setText("\u8bf7\u5207\u6362\u5230\u5176\u4ed6\u6765\u6e90");
                this.b(2130837937);
                this.u();
                this.a(false);
                return;
            }
            case 1: {
                this.e();
                return;
            }
            case -1: {
                this.p();
                this.n.setVisibility(0);
                this.t();
                this.a(false);
                if (a.t(this.b)) {
                    this.l.setText("\u8fde\u63a5\u8d85\u65f6\uff0c\u518d\u8bd5\u8bd5\uff1f");
                    this.m.setText("\u8bf7\u5237\u65b0\u91cd\u8bd5\u6216\u5207\u6362\u6765\u6e90");
                    this.b(2130837937);
                    this.u();
                    return;
                }
                this.l.setText("\u6ca1\u7f51\uff0c\u8fde\u4e0d\u4e0a\u5440");
                this.m.setText("\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5");
                this.b(2130837938);
                this.o.setVisibility(8);
                this.n.setText(2131034471);
                return;
            }
            case -3: {
                this.p();
                this.n.setVisibility(0);
                this.l.setText("\u672c\u7ae0\u6682\u65e0\u6587\u5b57");
                this.m.setText("\u672a\u627e\u5230\u672c\u7ae0\u7684\u6587\u5b57\u5185\u5bb9");
                this.b(2130837937);
                this.t();
                this.u();
                this.a(false);
                return;
            }
            case -2: {
                this.p();
                this.l.setText("\u6b64\u6765\u6e90\u5c1a\u672a\u66f4\u65b0\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5");
                this.m.setText("");
                this.b(2130837939);
                this.u();
                this.a(false);
                return;
            }
            case -4: {
                this.p();
                this.n.setVisibility(0);
                this.l.setText("\u8fde\u63a5\u8d85\u65f6\uff0c\u518d\u8bd5\u8bd5\uff1f");
                this.m.setText("\u8bf7\u5237\u65b0\u91cd\u8bd5\u6216\u5207\u6362\u6765\u6e90");
                this.b(2130837937);
                this.n.setOnClickListener(new q(this));
                this.u();
                this.a(false);
                return;
            }
            case 0:
        }
        this.j.setVisibility(8);
        this.g.setText("");
        this.h.setText("");
        this.i.setText("");
        this.a(false);
    }

    private void p() {
        this.j.setVisibility(0);
        this.g.setText(this.d.i());
        this.h.setText("");
        this.i.setText("");
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean q() {
        if (MyApplication.a().d() == 9) {
            return false;
        }
        boolean bl = false;
        if (!bl) {
            if (this.d == null) return false;
            if (this.d.l() % 5 == 4 && this.d.h()) {
                return true;
            }
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void r() {
        if (!this.e) {
            return;
        }
        View view = this.f.findViewById(2131493907);
        if (view == null) return;
        if (am.q(this.b) && a.F(this.b) && this.q() && this.a(view) && this.b instanceof ReaderActivity) {
            Advert advert = com.clilystudio.netbook.util.adutil.n.b(this.b, "page");
            if (advert != null && a.w(this.b, "rate_zssq_advert_reader_bookinfo")) {
                view.setVisibility(0);
                this.a(view, advert);
                return;
            }
            view.setVisibility(8);
            return;
        }
        view.setVisibility(8);
        if (!this.e) return;
        if (a.a((Context) this.b, "remove_ad_toast_showed" + com.clilystudio.netbook.util.I.a, false)) return;
        if (!this.q()) return;
        if (!this.a(view)) return;
        if (am.r(this.b)) return;
        com.clilystudio.netbook.util.e.a(this.b, "\u5df2\u4e3a\u60a8\u81ea\u52a8\u514d\u9664\u5e7f\u544a");
        a.b((Context) this.b, "remove_ad_toast_showed" + com.clilystudio.netbook.util.I.a, true);
    }

    private void s() {
        View view = this.f.findViewById(2131493907);
        if (view != null) {
            view.setVisibility(8);
        }
    }

    private void t() {
        this.n.setOnClickListener(new B(this));
    }

    private void u() {
        this.o.setVisibility(0);
        this.o.setText("\u66f4\u6362\u6765\u6e90");
        this.o.setOnClickListener(new r(this));
    }

    public final void a() {
        this.p = true;
    }

    public final void a(int n2) {
        ((TextView) this.f.findViewById(2131493914)).setText(String.valueOf(n2));
    }

    public final void a(int n2, int n3) {
        if (this.h instanceof JustifyTextView) {
            ((JustifyTextView) this.h).setHighLight(n2, n3);
        }
    }

    public final void a(F f2) {
        this.s = f2;
    }

    public final void a(G g2) {
        this.q = g2;
    }

    public final void a(H h2) {
        this.r = h2;
    }

    public final void a(n n2) {
        this.d = n2;
        this.e = false;
        this.n();
        this.b(n2);
        this.s();
    }

    public final void a(n n2, boolean bl) {
        this.d = n2;
        this.e = true;
        this.n();
        this.b(n2);
        if (this.a(n2.a())) {
            b.a(this.b, "paying_page_auto_purchase", com.clilystudio.netbook.util.I.b);
            I i2 = new I(this, this.b, "\u81ea\u52a8\u8d2d\u4e70\u4e2d...");
            String[] arrstring = new String[]{am.e().getToken(), n2.a().getId()};
            i2.b(arrstring);
        }
        if (n2.j() == 0) {
            int n3 = n2.l();
            Reader reader = MyApplication.a().b();
            if (o.o()) {
                reader.a(n3 + 1, new p(this), true, false);
            }
        }
    }

    public final boolean a(ReaderChapter readerChapter) {
        if (!o.o()) {
            return false;
        }
        if (readerChapter == null || !readerChapter.isVip()) {
            return false;
        }
        if (a.a((Context) this.b, "user_account_balance", 0) < readerChapter.getCurrency()) {
            return false;
        }
        String string = readerChapter.getKey();
        if (string == null) {
            string = this.d.q().a().e().get(readerChapter.getId());
        }
        if (string == null) {
            return true;
        }
        return false;
    }

    public final void b() {
        this.l();
    }

    public final void c() {
        this.l();
    }

    public final int d() {
        return this.h.getHeight();
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void e() {
        if (this.d == null) {
            return;
        }
        if (this.f()) {
            if (this.e) {
                b.a(this.b, "paying_page_show", com.clilystudio.netbook.util.I.b);
            }
            this.a(true);
            return;
        }
        if (this.p) {
            this.m();
        }
        this.j.setVisibility(8);
        this.g.setText(this.d.i());
        if (this.c.i()) {
            this.h.setText(this.d.a(this.b));
        } else {
            this.h.setText(this.d.c());
        }
        TextView textView = this.i;
        Object[] arrobject = new Object[]{1 + this.d.j(), this.d.k()};
        textView.setText(String.format("%s/%s", arrobject));
        this.a(false);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final boolean f() {
        try {
            if (this.d == null) {
                return false;
            }
            ChapterLink[] arrchapterLink = MyApplication.a().b().d();
            if (arrchapterLink == null) return false;
            if (arrchapterLink.length == 0) {
                return false;
            }
            int n2 = this.d.l();
            if (n2 < 0) {
                n2 = 0;
            } else if (n2 >= arrchapterLink.length) {
                n2 = -1 + arrchapterLink.length;
            }
            if (!arrchapterLink[n2].isVip()) {
                return false;
            }
            String string = this.d.a().getKey();
            if (string == null && (string = this.d.q().a().e().get(this.d.a().getId())) != null) {
                this.d.a().setKey(string);
            }
            if (string != null) return false;
            return true;
        } catch (Exception var1_4) {
            b.a(this.b, "zhuishu_catch_exception", "PageBinder_needPay:" + var1_4.getMessage());
            return false;
        }
    }

    public final void g() {
        if (this.e) {
            b.a(this.b, "paying_page_cancel", com.clilystudio.netbook.util.I.b);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void h() {
        View view;
        if (this.e || (view = this.f.findViewById(2131493907)) == null) {
            return;
        }
        view.setVisibility(8);
    }

    public final View i() {
        return this.f;
    }

    public final n j() {
        return this.d;
    }

    public final void k() {
        ((TextView) this.f.findViewById(2131493606)).setText(a.format(System.currentTimeMillis()));
    }

    @l
    public final void onHideAdEvent(com.clilystudio.netbook.event.s s2) {
        this.s();
    }

    @l
    public final void onLoginEvent(com.clilystudio.netbook.event.t t2) {
        Account account;
        if (this.e && (account = t2.a()) != null) {
            new D(this, this.b, "\u6b63\u5728\u83b7\u53d6\u8d44\u4ea7\u4fe1\u606f...", account.getToken()).b(new Void[0]);
        }
    }

    @l
    public final void onPayFinish(com.clilystudio.netbook.event.y y2) {
        if (this.e && y2.a()) {
            C c2 = new C(this, this.b, "\u6b63\u5728\u66f4\u65b0\u8d44\u4ea7\u4fe1\u606f...");
            String[] arrstring = new String[]{am.e().getToken()};
            c2.b(arrstring);
        }
    }

    @l
    public final void onRemoveAdEvent$2234193(a a2) {
        if (this.e) {
            this.f.findViewById(2131493907).setVisibility(8);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @l
    public final void onShowThirdAd(com.clilystudio.netbook.event.B b2) {
        View view;
        Advert advert;
        if (!(b2 != null && am.q(this.b) && b2.b().equals("page") && (view = this.f.findViewById(2131493907)) != null && a.F(this.b) && this.q() && this.a(view) && this.b instanceof ReaderActivity && (advert = b2.a()) != null)) {
            return;
        }
        view.setVisibility(0);
        this.a(view, advert);
    }

    @l
    public final void onThemeChanged(com.clilystudio.netbook.event.C c2) {
        this.r();
    }
}