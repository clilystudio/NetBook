package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.event.B;
import com.clilystudio.netbook.event.c;
import com.clilystudio.netbook.event.h;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.reader.dl.a;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.netbook.util.I;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.util.adutil.n;
import com.clilystudio.netbook.util.m;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.TagsLayout;
import com.umeng.a.b;

import java.util.Date;

import cn.sharesdk.framework.PlatformActionListener;

public class BookInfoActivity extends BaseActivity implements View.OnClickListener {
    private static final String a = BookInfoActivity.class.getSimpleName();
    private View b;
    private View c;
    private View e;
    private View f;
    private View g;
    private String h;
    private boolean i;
    private boolean j;
    private BookInfo k;
    private int l = 0;
    private Handler m;

    public BookInfoActivity() {
        this.m = new aB(this);
    }

    public static Intent a(Context context, String string) {
        return new d().a(context, BookInfoActivity.class).a("book_id", string).a("open_type", 0).a();
    }

    public static Intent a(Context context, String string, int n) {
        return new d().a(context, BookInfoActivity.class).a("book_id", string).a("open_type", n).a();
    }

    static /* synthetic */ BookInfo a(BookInfoActivity bookInfoActivity, BookInfo bookInfo) {
        bookInfoActivity.k = bookInfo;
        return bookInfo;
    }

    static /* synthetic */ void a(BookInfoActivity bookInfoActivity) {
        if (bookInfoActivity.k != null) {
            SourceRecord sourceRecord;
            I.a = bookInfoActivity.h;
            I.b = bookInfoActivity.k.getTitle();
            BookReadRecord bookReadRecord = BookReadRecord.getOnShelf(bookInfoActivity.h);
            if (bookReadRecord != null) {
                I.d = bookReadRecord.getDownloadedSource();
                I.c = bookReadRecord.getTocId();
                I.g = bookReadRecord.getReadMode();
            }
            if ((sourceRecord = SourceRecord.get(bookInfoActivity.h, I.d)) != null) {
                I.e = sourceRecord.getSourceId();
                I.f = sourceRecord.getSogouMd();
            }
            if (!bookInfoActivity.i) {
                bookInfoActivity.h();
            }
            new a(bookInfoActivity).a(BookReadRecord.getOnShelf(bookInfoActivity.h));
        }
    }

    static /* synthetic */ void a(BookInfoActivity bookInfoActivity, int n2) {
        if (bookInfoActivity.k != null) {
            String string = bookInfoActivity.k.getTitle();
            String string2 = bookInfoActivity.k.getFullCover();
            T.a(bookInfoActivity, string, bookInfoActivity.k.getLongIntro(), "http://share.zhuishushenqi.com/book/" + bookInfoActivity.k.getId(), string2, n2, (PlatformActionListener) ((Object) new aA(bookInfoActivity)));
        }
    }

    static /* synthetic */ void a(BookInfoActivity bookInfoActivity, String string) {
        bookInfoActivity.startActivity(BookTagListActivity.a(bookInfoActivity, string));
    }

    static /* synthetic */ boolean a(BookInfoActivity bookInfoActivity, boolean bl) {
        bookInfoActivity.i = true;
        return true;
    }

    static /* synthetic */ String b() {
        return a;
    }

    static /* synthetic */ void b(BookInfoActivity bookInfoActivity) {
        bookInfoActivity.g();
    }

    static /* synthetic */ void b(BookInfoActivity bookInfoActivity, int n2) {
        bookInfoActivity.e(n2);
    }

    static /* synthetic */ boolean b(BookInfoActivity bookInfoActivity, boolean bl) {
        bookInfoActivity.j = bl;
        return bl;
    }

    static /* synthetic */ void c(BookInfoActivity bookInfoActivity, boolean bl) {
        if (bl) {
            com.clilystudio.netbook.hpay100.a.a.b((Context) bookInfoActivity, "add_update_notify_login", false);
        }
    }

    static /* synthetic */ boolean c(BookInfoActivity bookInfoActivity) {
        return bookInfoActivity.j;
    }

    static /* synthetic */ void d(BookInfoActivity bookInfoActivity) {
        FragmentTransaction fragmentTransaction = bookInfoActivity.getSupportFragmentManager().beginTransaction();
        fragmentTransaction.replace(2131493328, BestReviewsFragment.a(bookInfoActivity.h, bookInfoActivity.k.getTitle()));
        fragmentTransaction.replace(2131493332, RelateBooksFragment.a(bookInfoActivity.h));
        fragmentTransaction.replace(2131493333, RelateUgcFragment.a(bookInfoActivity.h));
        try {
            fragmentTransaction.commitAllowingStateLoss();
            return;
        } catch (IllegalStateException var5_2) {
            var5_2.printStackTrace();
            return;
        }
    }

    static /* synthetic */ void e(BookInfoActivity bookInfoActivity) {
        bookInfoActivity.k();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void f(BookInfoActivity bookInfoActivity) {
        bookInfoActivity.a().a((CharSequence) bookInfoActivity.k.getTitle());
        ((CoverView) bookInfoActivity.findViewById(2131493282)).setImageUrl(bookInfoActivity.k.getFullCoverLarge(), 2130837766);
        ((TextView) bookInfoActivity.findViewById(2131493316)).setText(bookInfoActivity.k.getTitle());
        TextView textView = (TextView) bookInfoActivity.findViewById(2131493317);
        textView.setText(bookInfoActivity.k.getAuthor());
        textView.setTextColor(bookInfoActivity.getResources().getColor(2131427413));
        bookInfoActivity.findViewById(2131493284).setOnClickListener(bookInfoActivity);
        String string = bookInfoActivity.k.getCat() != null ? bookInfoActivity.k.getCat() : "-";
        ((TextView) bookInfoActivity.findViewById(2131493318)).setText("  |  " + string);
        TextView textView2 = (TextView) bookInfoActivity.findViewById(2131493319);
        int n2 = bookInfoActivity.k.getWordCount();
        if (n2 > 0) {
            textView2.setVisibility(View.VISIBLE);
            Object[] arrobject = new Object[]{com.clilystudio.netbook.hpay100.a.a.i(n2)};
            textView2.setText(String.format("  |  %s\u5b57", arrobject));
        } else {
            textView2.setVisibility(View.GONE);
        }
        if (bookInfoActivity.k.getUpdated() != null) {
            String string2 = bookInfoActivity.k.getIsSerial() ? t.e((Date) bookInfoActivity.k.getUpdated()) : "\u5b8c\u7ed3";
            ((TextView) bookInfoActivity.findViewById(2131493320)).setText(string2);
        }
        ((TextView) bookInfoActivity.findViewById(2131493324)).setText(Integer.toString(bookInfoActivity.k.getLatelyFollower()));
        TextView textView3 = (TextView) bookInfoActivity.findViewById(2131493325);
        if (bookInfoActivity.k.getRetentionRatio() != 0.0f) {
            textView3.setText("" + bookInfoActivity.k.getRetentionRatio() + "%");
        } else {
            textView3.setText("-");
        }
        TextView textView4 = (TextView) bookInfoActivity.findViewById(2131493326);
        if (bookInfoActivity.k.getSerializeWordCount() >= 0) {
            textView4.setText(Integer.toString(bookInfoActivity.k.getSerializeWordCount()));
        } else {
            textView4.setText("-");
        }
        bookInfoActivity.findViewById(2131493329).setOnClickListener(bookInfoActivity);
        String string3 = bookInfoActivity.k.getTitle();
        String string4 = string3.length() > 10 ? string3.substring(0, 10) + "..." : string3;
        ((TextView) bookInfoActivity.findViewById(2131493330)).setText(string4 + "\u7684\u793e\u533a");
        ((TextView) bookInfoActivity.findViewById(2131493331)).setText("\u5171\u6709 " + bookInfoActivity.k.getPostCount() + " \u4e2a\u5e16\u5b50");
        TextView textView5 = (TextView) bookInfoActivity.findViewById(2131493327);
        if (bookInfoActivity.k.getLongIntro() != null) {
            textView5.setText(bookInfoActivity.k.getLongIntro());
            textView5.post(new aC(bookInfoActivity, textView5));
        } else {
            textView5.setText("\u6682\u65e0");
        }
        bookInfoActivity.g();
        bookInfoActivity.a(bookInfoActivity.k.getTags());
        bookInfoActivity.f();
    }

    private void a(int n) {
        View view = this.a().a();
        TextView textView = null;
        if (view != null) {
            textView = (TextView) view.findViewById(2131493008);
        }
        if (textView == null) {
            return;
        }
        switch (n) {
            default: {
                return;
            }
            case 0:
            case 3:
            case 4: {
                textView.setEnabled(true);
                textView.setText(2131034329);
                textView.setTextColor(this.getResources().getColor(2131427552));
                return;
            }
            case 2: {
                textView.setEnabled(false);
                textView.setText("\u7f13\u5b58\u4e2d...");
                textView.setTextColor(this.getResources().getColor(2131427364));
                return;
            }
            case 1:
            case 5:
        }
        textView.setEnabled(false);
        textView.setText("\u7b49\u5f85\u4e2d...");
        textView.setTextColor(this.getResources().getColor(2131427364));
    }

    private void a(View view, Advert advert) {
        if (view == null || advert == null) {
            return;
        }
        advert.setPosition("book_info");
        advert.recordShow(this);
        SmartImageView smartImageView = (SmartImageView) view.findViewById(2131493312);
        TextView textView = (TextView) view.findViewById(2131493314);
        TextView textView2 = (TextView) view.findViewById(2131493315);
        view.findViewById(2131493313).setVisibility(View.VISIBLE);
        smartImageView.setImageUrl(advert.getFullImg());
        textView.setText(advert.getTitle());
        textView2.setText(advert.getDesc());
        view.setOnClickListener(new aE(this, advert));
        n.a(advert, view);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        View view = this.findViewById(2131493077);
        TextView textView = (TextView) this.findViewById(2131493323);
        View view2 = this.g;
        int n2 = bl ? 2130837711 : am.b((Context) this, (int) 2130771971);
        view2.setBackgroundResource(n2);
        int n3 = bl ? 2131034332 : 2131034331;
        textView.setText(n3);
        int n4 = bl ? 8 : 0;
        view.setVisibility(n4);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(String[] arrstring) {
        if (arrstring == null || arrstring.length == 0) {
            return;
        }
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        View view = this.findViewById(2131493334);
        view.setVisibility(View.VISIBLE);
        int n2 = arrstring.length;
        int n3 = com.clilystudio.netbook.hpay100.a.a.a((Context) this, 16.0f);
        TagsLayout tagsLayout = (TagsLayout) view.findViewById(2131493335);
        int[] arrn = com.clilystudio.netbook.hpay100.a.a.a((Context) this, "customer_night_theme", false) ? new int[]{2130837623, 2130837625, 2130837627, 2130837629, 2130837631, 2130837633, 2130837635} : new int[]{2130837622, 2130837624, 2130837626, 2130837628, 2130837630, 2130837632, 2130837634};
        int n4 = 0;
        int n5 = 0;
        while (n5 < n2) {
            TextView textView = (TextView) layoutInflater.inflate(2130903160, (ViewGroup) tagsLayout, false).findViewById(2131493337);
            String string = arrstring[n5];
            textView.setText(string);
            if (n4 >= 7) {
                n4 = 0;
            }
            textView.setBackgroundResource(arrn[n4]);
            textView.setOnClickListener(new aF(this, string));
            tagsLayout.addView((View) textView, new ViewGroup.LayoutParams(n3, n3));
            int n6 = n5 + 1;
            ++n4;
            n5 = n6;
        }
    }

    private void e(int n2) {
        switch (n2) {
            default: {
                return;
            }
            case 1: {
                this.b.setVisibility(View.VISIBLE);
                this.c.setVisibility(View.GONE);
                this.e.setVisibility(View.GONE);
                return;
            }
            case 0: {
                this.b.setVisibility(View.GONE);
                this.c.setVisibility(View.VISIBLE);
                this.e.setVisibility(View.GONE);
                return;
            }
            case 2:
        }
        this.b.setVisibility(View.GONE);
        this.c.setVisibility(View.GONE);
        this.e.setVisibility(View.VISIBLE);
    }

    private void f() {
        View view = this.findViewById(2131493311);
        if (am.q((Context) this) && com.clilystudio.netbook.hpay100.a.a.F(this)) {
            Advert advert = n.b(this, "book");
            if (advert != null && com.clilystudio.netbook.hpay100.a.a.w(this, "rate_zssq_advert_reader_bookinfo")) {
                view.setVisibility(View.VISIBLE);
                this.a(view, advert);
                return;
            }
            view.setVisibility(View.GONE);
            return;
        }
        view.setVisibility(View.GONE);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void g() {
        int n2 = this.f.getPaddingLeft();
        int n3 = this.f.getPaddingTop();
        int n4 = this.f.getPaddingRight();
        int n5 = this.f.getPaddingBottom();
        View view = this.f;
        int n6 = this.i ? 2130837711 : am.b((Context) this, (int) 2130771971);
        view.setBackgroundResource(n6);
        this.f.setPadding(n2, n3, n4, n5);
        TextView textView = (TextView) this.findViewById(2131493288);
        ImageView imageView = (ImageView) this.findViewById(2131493287);
        String string = this.i ? this.getString(2131034330) : this.getString(2131034328);
        textView.setText(string);
        int n7 = this.i ? 2130837714 : 2130837710;
        imageView.setImageResource(n7);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void h() {
        String string;
        if (this.i) {
            BookReadRecord.deleteAndSync(this.h);
            com.clilystudio.netbook.hpay100.a.a.v(this.h);
            String string2 = this.getString(2131034467);
            Object[] arrobject = new Object[]{this.k.getTitle()};
            string = String.format(string2, arrobject);
        } else {
            if (am.f()) {
                string = this.getString(2131034325);
            } else {
                BookReadRecord.create(this.k);
                com.clilystudio.netbook.hpay100.a.a.u(this.h);
                String string3 = this.getString(2131034283);
                Object[] arrobject = new Object[]{this.k.getTitle()};
                String string4 = String.format(string3, arrobject);
                if (com.clilystudio.netbook.hpay100.a.a.a((Context) this, "add_update_notify_login", true) && !am.g()) {
                    View view = this.getLayoutInflater().inflate(2130903380, null, false);
                    CheckBox checkBox = (CheckBox) view.findViewById(2131493973);
                    checkBox.setText(this.getString(2131034301));
                    checkBox.setChecked(false);
                    ((TextView) view.findViewById(2131493972)).setText(this.getString(2131034302));
                    new uk.me.lewisdeane.ldialogs.h(this).a(view).a("\u5feb\u901f\u767b\u5f55", (DialogInterface.OnClickListener) new aH(this, checkBox)).b("\u4e0d\u60f3\u540c\u6b65", (DialogInterface.OnClickListener) new aG(this, checkBox)).a().show();
                }
                string = string4;
            }
            b.a(this, "book_info_add");
            this.i();
        }
        e.a((Activity) this, (String) string);
    }

    private void i() {
        switch (this.l) {
            default: {
                return;
            }
            case 1: {
                b.a(this, "book_info_recommend_add_shelf", "zhuishu");
                return;
            }
            case 2: {
                b.a(this, "page_footing_recommend_add_shelf", "zhuishu");
                return;
            }
            case 3: {
                b.a(this, "book_info_recommend_add_shelf", "bfd");
                return;
            }
            case 4:
        }
        b.a(this, "page_footing_recommend_add_shelf", "bfd");
    }

    private void j() {
        this.e(0);
        aI aI2 = new aI(this, 0);
        String[] arrstring = new String[]{this.h};
        aI2.b(arrstring);
    }

    private void k() {
        if (this.k != null) {
            MyApplication.a().a(this.k);
        }
    }

    @l
    public void onBookAdded(c c2) {
        if (c2.b().equals(this.h) && !this.i) {
            this.m.sendEmptyMessage(0);
            this.i();
        }
    }

    @l
    public void onBookRemoved(h h2) {
        if (h2.b().equals(this.h) && this.i) {
            this.i = false;
            this.g();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131493321: {
                this.h();
                return;
            }
            case 2131493322: {
                BookReadRecord bookReadRecord = BookReadRecord.get(this.h);
                if (bookReadRecord == null) {
                    this.a(true);
                    new m((Activity) this).a(this.k);
                } else {
                    new m((Activity) this).a(bookReadRecord);
                }
                b.a(this, "book_info_search");
                return;
            }
            case 2131493329: {
                this.startActivity(BookPostTabActivity.a(this, this.h, this.k.getTitle()));
                b.a(this, "book_info_post");
                return;
            }
            case 2131493284: {
                this.startActivity(AuthorBooksActivity.a(this, this.k.getAuthor()));
                return;
            }
            case 2131493138:
        }
        this.j();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903087);
        ay ay2 = new ay(this);
        this.c();
        View view = LayoutInflater.from(this).inflate(2130903041, null);
        ((TextView) view.findViewById(2131492936)).setText(2131034333);
        view.findViewById(2131493013).setOnClickListener(new U(this));
        TextView textView = (TextView) view.findViewById(2131493010);
        TextView textView2 = (TextView) view.findViewById(2131493011);
        textView.setText(2131034329);
        textView2.setText(2131034175);
        textView.setOnClickListener(new V(this, (ab) ((Object) ay2)));
        textView2.setOnClickListener(new W(this, (ab) ((Object) ay2)));
        this.a().a(view);
        this.b = this.findViewById(2131492905);
        this.c = this.findViewById(2131493085);
        this.e = this.findViewById(2131493086);
        this.g = this.findViewById(2131493322);
        this.f = this.findViewById(2131493321);
        this.g.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.h = this.getIntent().getStringExtra("book_id");
        boolean bl = BookReadRecord.getOnShelf(this.h) != null;
        this.i = bl;
        i.a().a(this);
        this.j();
        b.a(this, "book_info_open");
        this.l = this.getIntent().getIntExtra("open_type", 0);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onDownloadStatus(com.clilystudio.netbook.event.d d2) {
        if (this.h.equals(d2.b())) {
            this.a(d2.a());
        }
    }

    @l
    public void onHideAdEvent(s s2) {
        this.f();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.k();
        this.a(false);
        this.a(am.g((String) this.h));
    }

    /*
     * Enabled aggressive block sorting
     */
    @l
    public void onShowThirdAd(B b2) {
        Advert advert;
        if (b2 == null || !am.q((Context) this) || !b2.b().equals("book") || (advert = b2.a()) == null) {
            return;
        }
        View view = this.findViewById(2131493311);
        view.setVisibility(View.VISIBLE);
        this.a(view, advert);
    }
}
