package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.clilystudio.netbook.am;
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
        fragmentTransaction.replace(R.id.content_frame_best_reviews, BestReviewsFragment.a(bookInfoActivity.h, bookInfoActivity.k.getTitle()));
        fragmentTransaction.replace(R.id.content_frame_relate, RelateBooksFragment.a(bookInfoActivity.h));
        fragmentTransaction.replace(R.id.content_frame_ugc, RelateUgcFragment.a(bookInfoActivity.h));
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
        ((CoverView) bookInfoActivity.findViewById(R.id.book_detail_info_cover)).setImageUrl(bookInfoActivity.k.getFullCoverLarge(), R.drawable.cover_default);
        ((TextView) bookInfoActivity.findViewById(R.id.book_detail_info_title)).setText(bookInfoActivity.k.getTitle());
        TextView textView = (TextView) bookInfoActivity.findViewById(R.id.author);
        textView.setText(bookInfoActivity.k.getAuthor());
        textView.setTextColor(bookInfoActivity.getResources().getColor(R.color.font_orange));
        bookInfoActivity.findViewById(R.id.author_and_type).setOnClickListener(bookInfoActivity);
        String string = bookInfoActivity.k.getCat() != null ? bookInfoActivity.k.getCat() : "-";
        ((TextView) bookInfoActivity.findViewById(R.id.type)).setText("  |  " + string);
        TextView textView2 = (TextView) bookInfoActivity.findViewById(R.id.word_count);
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
            ((TextView) bookInfoActivity.findViewById(R.id.update_time)).setText(string2);
        }
        ((TextView) bookInfoActivity.findViewById(R.id.book_detail_info_followers)).setText(Integer.toString(bookInfoActivity.k.getLatelyFollower()));
        TextView textView3 = (TextView) bookInfoActivity.findViewById(R.id.book_detail_info_retention);
        if (bookInfoActivity.k.getRetentionRatio() != 0.0f) {
            textView3.setText("" + bookInfoActivity.k.getRetentionRatio() + "%");
        } else {
            textView3.setText("-");
        }
        TextView textView4 = (TextView) bookInfoActivity.findViewById(R.id.book_detail_info_words);
        if (bookInfoActivity.k.getSerializeWordCount() >= 0) {
            textView4.setText(Integer.toString(bookInfoActivity.k.getSerializeWordCount()));
        } else {
            textView4.setText("-");
        }
        bookInfoActivity.findViewById(R.id.book_detail_info_topic_layout).setOnClickListener(bookInfoActivity);
        String string3 = bookInfoActivity.k.getTitle();
        String string4 = string3.length() > 10 ? string3.substring(0, 10) + "..." : string3;
        ((TextView) bookInfoActivity.findViewById(R.id.book_info_topic)).setText(string4 + "\u7684\u793e\u533a");
        ((TextView) bookInfoActivity.findViewById(R.id.topic_count)).setText("\u5171\u6709 " + bookInfoActivity.k.getPostCount() + " \u4e2a\u5e16\u5b50");
        TextView textView5 = (TextView) bookInfoActivity.findViewById(R.id.book_detail_info_desc);
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
            textView = (TextView) view.findViewById(R.id.actionbar_custom_right_text);
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
                textView.setText(R.string.book_info_download);
                textView.setTextColor(this.getResources().getColor(R.color.white_80));
                return;
            }
            case 2: {
                textView.setEnabled(false);
                textView.setText("\u7f13\u5b58\u4e2d...");
                textView.setTextColor(this.getResources().getColor(R.color.book_info_dl));
                return;
            }
            case 1:
            case 5:
        }
        textView.setEnabled(false);
        textView.setText("\u7b49\u5f85\u4e2d...");
        textView.setTextColor(this.getResources().getColor(R.color.book_info_dl));
    }

    private void a(View view, Advert advert) {
        if (view == null || advert == null) {
            return;
        }
        advert.setPosition("book_info");
        advert.recordShow(this);
        SmartImageView smartImageView = (SmartImageView) view.findViewById(R.id.book_info_ad_cover);
        TextView textView = (TextView) view.findViewById(R.id.book_info_ad_title);
        TextView textView2 = (TextView) view.findViewById(R.id.book_info_ad_desc);
        view.findViewById(R.id.book_info_ad_flag).setVisibility(View.VISIBLE);
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
        View view = this.findViewById(R.id.dis_post_detail_talk2);
        TextView textView = (TextView) this.findViewById(R.id.book_detail_info_search_text);
        View view2 = this.g;
        int n2 = bl ? R.drawable.book_detail_info_btn_gray : am.b((Context) this, (int) R.attr.audiobookRedButtonSelector);
        view2.setBackgroundResource(n2);
        int n3 = bl ? R.string.book_info_searching : R.string.book_info_search;
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
        View view = this.findViewById(R.id.book_info_tags_root);
        view.setVisibility(View.VISIBLE);
        int n2 = arrstring.length;
        int n3 = com.clilystudio.netbook.hpay100.a.a.a((Context) this, 16.0f);
        TagsLayout tagsLayout = (TagsLayout) view.findViewById(R.id.tags_layout);
        int[] arrn = com.clilystudio.netbook.hpay100.a.a.a((Context) this, "customer_night_theme", false) ? new int[]{R.drawable.bg_book_info_tag0_dark, R.drawable.bg_book_info_tag1_dark, R.drawable.bg_book_info_tag2_dark, R.drawable.bg_book_info_tag3_dark, R.drawable.bg_book_info_tag4_dark, R.drawable.bg_book_info_tag5_dark, R.drawable.bg_book_info_tag6_dark} : new int[]{R.drawable.bg_book_info_tag0, R.drawable.bg_book_info_tag1, R.drawable.bg_book_info_tag2, R.drawable.bg_book_info_tag3, R.drawable.bg_book_info_tag4, R.drawable.bg_book_info_tag5, R.drawable.bg_book_info_tag6};
        int n4 = 0;
        int n5 = 0;
        while (n5 < n2) {
            TextView textView = (TextView) layoutInflater.inflate(R.layout.book_info_tags_item, (ViewGroup) tagsLayout, false).findViewById(R.id.tag_text);
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
        View view = this.findViewById(R.id.book_info_ad_view);
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
        int n6 = this.i ? R.drawable.book_detail_info_btn_gray : am.b((Context) this, (int) R.attr.audiobookRedButtonSelector);
        view.setBackgroundResource(n6);
        this.f.setPadding(n2, n3, n4, n5);
        TextView textView = (TextView) this.findViewById(R.id.book_detail_info_add_text);
        ImageView imageView = (ImageView) this.findViewById(R.id.book_detail_info_add_iv);
        String string = this.i ? this.getString(R.string.book_info_remove_book) : this.getString(R.string.book_info_add_book);
        textView.setText(string);
        int n7 = this.i ? R.drawable.book_detail_info_del_img : R.drawable.book_detail_info_add_img;
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
            String string2 = this.getString(R.string.remove_book_event);
            Object[] arrobject = new Object[]{this.k.getTitle()};
            string = String.format(string2, arrobject);
        } else {
            if (am.f()) {
                string = this.getString(R.string.book_add_overflow);
            } else {
                BookReadRecord.create(this.k);
                com.clilystudio.netbook.hpay100.a.a.u(this.h);
                String string3 = this.getString(R.string.add_book_event);
                Object[] arrobject = new Object[]{this.k.getTitle()};
                String string4 = String.format(string3, arrobject);
                if (com.clilystudio.netbook.hpay100.a.a.a((Context) this, "add_update_notify_login", true) && !am.g()) {
                    View view = this.getLayoutInflater().inflate(R.layout.remove_shelf_confirm, null, false);
                    CheckBox checkBox = (CheckBox) view.findViewById(R.id.remove_shelf_cache);
                    checkBox.setText(this.getString(R.string.add_update_not_notify));
                    checkBox.setChecked(false);
                    ((TextView) view.findViewById(R.id.remove_shelf_text)).setText(this.getString(R.string.add_update_notify));
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
            case R.id.book_detail_info_add: {
                this.h();
                return;
            }
            case R.id.book_detail_info_search: {
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
            case R.id.book_detail_info_topic_layout: {
                this.startActivity(BookPostTabActivity.a(this, this.h, this.k.getTitle()));
                b.a(this, "book_info_post");
                return;
            }
            case R.id.author_and_type: {
                this.startActivity(AuthorBooksActivity.a(this, this.k.getAuthor()));
                return;
            }
            case R.id.load_error_hint:
        }
        this.j();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_book_info);
        ay ay2 = new ay(this);
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.ab_custom_two_text_view, null);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.book_info_title);
        view.findViewById(R.id.back).setOnClickListener(new U(this));
        TextView textView = (TextView) view.findViewById(R.id.ab_custom_right_text);
        TextView textView2 = (TextView) view.findViewById(R.id.ab_custom_right_text_2);
        textView.setText(R.string.book_info_download);
        textView2.setText(R.string.share);
        textView.setOnClickListener(new V(this, (ab) ((Object) ay2)));
        textView2.setOnClickListener(new W(this, (ab) ((Object) ay2)));
        this.a().a(view);
        this.b = this.findViewById(R.id.content);
        this.c = this.findViewById(R.id.pb_loading);
        this.e = this.findViewById(R.id.load_error_hint_btn);
        this.g = this.findViewById(R.id.book_detail_info_search);
        this.f = this.findViewById(R.id.book_detail_info_add);
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
        View view = this.findViewById(R.id.book_info_ad_view);
        view.setVisibility(View.VISIBLE);
        this.a(view, advert);
    }
}
