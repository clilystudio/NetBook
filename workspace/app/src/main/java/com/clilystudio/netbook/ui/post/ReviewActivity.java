package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostComment$PostCommentReply;
import com.clilystudio.netbook.model.ReplyeeInfo;
import com.clilystudio.netbook.model.Review;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.N;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.HotCommentView;
import com.clilystudio.netbook.widget.LinkifyTextView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.PostUsefulView;
import com.clilystudio.netbook.widget.RatingView;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.SendView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import cn.sharesdk.framework.PlatformActionListener;

public class ReviewActivity extends AbsPostActivity {

    private View f;
    private z g;
    private cD i;
    private View j;
    private TextView k;
    private Account l;
    private Review m;
    private SendView o;
    private List h = new ArrayList();
    private boolean n = false;
    private boolean p = false;
    private av q = new cz(this);
    private View$OnClickListener r = new cB(this);

    static Review a(ReviewActivity ReviewActivity1, Review Review2) {
        ReviewActivity1.m = Review2;
        return Review2;
    }

    static void a(ReviewActivity ReviewActivity1) {
        ReviewActivity1.o.a();
    }

    static void a(ReviewActivity ReviewActivity1, Tweet Tweet2) {
        User User3 = Tweet2.getUser();
        SmartImageView SmartImageView4 = (SmartImageView) ReviewActivity1.c.findViewById(2131492899);
        ImageView ImageView5;

        if (am.m((Context) ReviewActivity1))
            SmartImageView4.setImageResource(2130837614);
        else
            SmartImageView4.setImageUrl(User3.getFullAvatar());
        ((TextView) ReviewActivity1.c.findViewById(2131492928)).setText((CharSequence) User3.getNickname());
        ((TextView) ReviewActivity1.c.findViewById(2131493631)).setText((CharSequence) new StringBuilder("lv.").append(User3.getLv()).toString());
        ((TextView) ReviewActivity1.c.findViewById(2131492935)).setText((CharSequence) t.e(Tweet2.getCreated()));
        ((TextView) ReviewActivity1.c.findViewById(2131492936)).setText((CharSequence) Tweet2.getTitle());
        ((LinkifyTextView) ReviewActivity1.c.findViewById(2131492905)).setLinkifyText(Tweet2.getContent(), false);
        ReviewActivity1.k.setText((CharSequence) new StringBuilder("\u5171").append(Tweet2.getCommented()).append("\u6761\u8BC4\u8BBA").toString());
        ((CoverView) ReviewActivity1.c.findViewById(2131493349)).setImageUrl(Tweet2.getBook().getCover());
        ((TextView) ReviewActivity1.c.findViewById(2131493350)).setText((CharSequence) Tweet2.getBook().getTitle());
        ((RatingView) ReviewActivity1.c.findViewById(2131493351)).setValue(Tweet2.getScore());
        ImageView5 = (ImageView) ReviewActivity1.c.findViewById(2131493629);
        if (ReviewActivity1.p) {
            String String7 = User3.getGender();

            if ("male".equals(String7)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(2);
            } else if ("female".equals(String7)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(3);
            } else {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(4);
            }
        } else {
            String String6 = User3.getType();

            if ("official".equals(String6)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(0);
                com.clilystudio.netbook.hpay100.a.a.s((Context) ReviewActivity1, Tweet2.get_id());
            } else if ("doyen".equals(String6)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(1);
            } else
                ImageView5.setVisibility(8);
        }
        if (!ReviewActivity1.n)
            ((PostUsefulView) ReviewActivity1.c.findViewById(2131493352)).setPost(ReviewActivity1.m);
        ReviewActivity1.c.findViewById(2131493348).setOnClickListener(ReviewActivity1.r);
        ReviewActivity1.c.a();
        ReviewActivity1.c.b();
    }

    static void b(ReviewActivity ReviewActivity1) {
        if (ReviewActivity1.n) {
            int int5 = ReviewActivity1.h.size();
            String String6 = null;
            cF cF7;
            String[] String_1darray8;

            if (int5 > 0)
                String6 = ((PostComment) ReviewActivity1.h.get(-1 + ReviewActivity1.h.size())).get_id();
            cF7 = new cF(ReviewActivity1, (byte) 0);
            String_1darray8 = new String[2];
            String_1darray8[0] = ReviewActivity1.a;
            String_1darray8[1] = String6;
            cF7.b(String_1darray8);
        } else if (ReviewActivity1.m != null) {
            cD cD2;
            String[] String_1darray3;

            ReviewActivity1.f.setVisibility(0);
            ReviewActivity1.i = new cD(ReviewActivity1, (byte) 0);
            cD2 = ReviewActivity1.i;
            String_1darray3 = new String[1];
            String_1darray3[0] = ReviewActivity1.m.get_id();
            cD2.b(String_1darray3);
            return;
        }
    }

    static void b(ReviewActivity ReviewActivity1, Review Review2) {
        Author Author3 = Review2.getAuthor();
        SmartImageView SmartImageView4 = (SmartImageView) ReviewActivity1.c.findViewById(2131492899);
        ImageView ImageView5;

        if (am.m((Context) ReviewActivity1))
            SmartImageView4.setImageResource(2130837614);
        else {
            SmartImageView4.setImageUrl(Author3.getScaleAvatar());
            SmartImageView4.setOnClickListener((View$OnClickListener) new cA(ReviewActivity1, Author3));
        }
        ((TextView) ReviewActivity1.c.findViewById(2131492928)).setText((CharSequence) Author3.getNickname());
        ((TextView) ReviewActivity1.c.findViewById(2131493631)).setText((CharSequence) new StringBuilder("lv.").append(Author3.getLv()).toString());
        ((TextView) ReviewActivity1.c.findViewById(2131492935)).setText((CharSequence) t.e(Review2.getCreated()));
        ((TextView) ReviewActivity1.c.findViewById(2131492936)).setText((CharSequence) Review2.getTitle());
        ((LinkifyTextView) ReviewActivity1.c.findViewById(2131492905)).setLinkifyText(Review2.getContent(), Author3.isOfficial());
        ReviewActivity1.k.setText((CharSequence) new StringBuilder("\u5171").append(Review2.getCommentCount()).append("\u6761\u8BC4\u8BBA").toString());
        ((CoverView) ReviewActivity1.c.findViewById(2131493349)).setImageUrl(Review2.getBook().getFullCover());
        ((TextView) ReviewActivity1.c.findViewById(2131493350)).setText((CharSequence) Review2.getBook().getTitle());
        ((RatingView) ReviewActivity1.c.findViewById(2131493351)).setValue(Review2.getRating());
        ImageView5 = (ImageView) ReviewActivity1.c.findViewById(2131493629);
        if (ReviewActivity1.p) {
            String String7 = Author3.getGender();

            if ("male".equals(String7)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(2);
            } else if ("female".equals(String7)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(3);
            } else {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(4);
            }
        } else {
            String String6 = Author3.getType();

            if ("official".equals(String6)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(0);
                com.clilystudio.netbook.hpay100.a.a.s((Context) ReviewActivity1, Review2.get_id());
            } else if ("doyen".equals(String6)) {
                ImageView5.setVisibility(0);
                ImageView5.setImageLevel(1);
            } else
                ImageView5.setVisibility(8);
        }
        ((PostUsefulView) ReviewActivity1.c.findViewById(2131493352)).setPost(ReviewActivity1.m);
        ReviewActivity1.c.findViewById(2131493348).setOnClickListener(ReviewActivity1.r);
        ReviewActivity1.c.a();
        ReviewActivity1.c.b();
    }

    static av c(ReviewActivity ReviewActivity1) {
        return ReviewActivity1.q;
    }

    static View d(ReviewActivity ReviewActivity1) {
        return ReviewActivity1.f;
    }

    static List e(ReviewActivity ReviewActivity1) {
        return ReviewActivity1.h;
    }

    static z f(ReviewActivity ReviewActivity1) {
        return ReviewActivity1.g;
    }

    static void g(ReviewActivity ReviewActivity1) {
        TextView TextView2;

        ReviewActivity1.f.setVisibility(0);
        ReviewActivity1.f.findViewById(2131493085).setVisibility(8);
        TextView2 = (TextView) ReviewActivity1.f.findViewById(2131493798);
        TextView2.setText((CharSequence) "\u70B9\u51FB\u52A0\u8F7D\u8BC4\u8BBA");
        ReviewActivity1.f.setOnClickListener((View$OnClickListener) new cy(ReviewActivity1, TextView2));
    }

    static Review h(ReviewActivity ReviewActivity1) {
        return ReviewActivity1.m;
    }

    static cD i(ReviewActivity ReviewActivity1) {
        return ReviewActivity1.i;
    }

    protected final void a(Account Account1, String String2) {
        if (!n)
            super.a(Account1, String2);
        else {
            cI cI3 = new cI(this, (Activity) this, 2131034430);
            String[] String_1darray4 = new String[3];

            String_1darray4[0] = Account1.getToken();
            String_1darray4[1] = a;
            String_1darray4[2] = String2;
            cI3.b(String_1darray4);
        }
    }

    protected final void a(ReplyeeInfo ReplyeeInfo1, String String2) {
        if (!n)
            super.a(ReplyeeInfo1, String2);
        else {
            Account Account3;

            g(String2);
            Account3 = am.a((Activity) this);
            if (Account3 != null) {
                if (String2.length() > 512)
                    com.clilystudio.netbook.util.e.a((Activity) this, 2131034305);
                else {
                    cH cH4 = new cH(this, (Activity) this, 2131034430);
                    String[] String_1darray5 = new String[4];

                    String_1darray5[0] = Account3.getToken();
                    String_1darray5[1] = a;
                    String_1darray5[2] = ReplyeeInfo1.getCommentId();
                    String_1darray5[3] = String2;
                    cH4.b(String_1darray5);
                }
                return;
            }
        }
    }

    public final void a(String String1) {
        new N((Activity) this).b(m.get_id(), String1);
    }

    protected final void b() {
        i();
        if (!n) {
            cE cE1 = new cE(this, (byte) 0);
            String[] String_1darray2 = new String[1];

            String_1darray2[0] = a;
            cE1.b(String_1darray2);
        } else {
            cG cG4 = new cG(this, (byte) 0);
            String[] String_1darray5 = new String[1];

            String_1darray5[0] = a;
            cG4.b(String_1darray5);
        }
    }

    public final void e(int int1) {
        int int2 = 1;

        if (m != null) {
            if (int1 == int2) {
                a(null);
                return;
            } else if (int1 == 0) {
                Account Account3 = am.e();

                if (Account3 == null) {
                    com.clilystudio.netbook.util.e.a((Activity) this, "\u8BF7\u767B\u5F55\u540E\u518D\u64CD\u4F5C");
                    startActivity(AuthLoginActivity.a((Context) this));
                    int2 = 0;
                } else
                    l = Account3;
                if (int2 != 0) {
                    new N((Activity) this).a(l.getToken(), m.get_id());
                    return;
                }
            }
        }
    }

    public final void f() {
        super.f();
        j.setVisibility(0);
    }

    public final void f(int int1) {
        if (m == null)
            com.clilystudio.netbook.util.e.a((Activity) this, "\u64CD\u4F5C\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5");
        else {
            String String2 = m.getBook().getTitle();
            String String3 = m.getBook().getFullCover();

            T.a((Context) this, String2, new StringBuilder().append(String2).append("\u7684\u4E66\u8BC4\uFF1A\u300C").append(m.getTitle()).append("\u300D\uFF0C \u697C\u4E3B\u4F60\u5199\u7684\u8FD9\u4E48\u8D5E\uFF0C\u4F60\u7684\u5C0F\u4F19\u4F34\u77E5\u9053\u5417\uFF1F").toString(), m.getShareLink(), String3, int1, (PlatformActionListener) new cC(this));
        }
    }

    public final void h() {
        super.h();
        j.setVisibility(8);
    }

    public final void i() {
        super.i();
        j.setVisibility(8);
    }

    protected final void o() {
        List List1 = h;
        PostComment PostComment2 = null;
        User User3;
        Author Author4;
        Object Object5;

        if (List1 != null) {
            int int7 = h.size();

            PostComment2 = null;
            if (int7 > 0)
                PostComment2 = (PostComment) h.get(0);
        }
        User3 = am.e().getUser();
        Author4 = new Author();
        Author4.setAvatar(User3.getAvatar());
        Author4.setNickname(User3.getNickname());
        Author4.setLv(User3.getLv());
        Object5 = new PostComment();
        ((PostComment) Object5).setAuthor(Author4);
        ((PostComment) Object5).setContent(l());
        ((PostComment) Object5).setCreated(new Date());
        if (e != null) {
            PostComment$PostCommentReply PostCommentReply6 = new PostComment$PostCommentReply();

            PostCommentReply6.setFloor(e.getFloor());
            PostCommentReply6.setAuthor(e.getAuthor());
            ((PostComment) Object5).setReplyTo(PostCommentReply6);
        }
        if (PostComment2 != null)
            ((PostComment) Object5).setFloor(1 + PostComment2.getFloor());
        else
            ((PostComment) Object5).setFloor(1);
        h.add(0, Object5);
        g.a((Collection) h);
        if (com.clilystudio.netbook.hpay100.a.a.g())
            b.smoothScrollToPositionFromTop(2, 60);
        else
            b.setSelection(2);
    }

    public void onCreate(Bundle Bundle1) {
        Object Object2;
        Object Object3;

        super.onCreate(Bundle1);
        a(2130903350);
        b("\u4E66\u8BC4\u8BE6\u60C5");
        Object2 = getIntent().getStringExtra("EXTRA_TYPE_NAME");
        if (!android.text.TextUtils.isEmpty((CharSequence) Object2))
            n = ((String) Object2).equals("BOOK_COMMENT");
        a = getIntent().getStringExtra("extraReviewId");
        b = (ScrollLoadListView) findViewById(2131493135);
        j = findViewById(2131493838);
        a(true);
        c = new PostHeader((Context) this);
        c.findViewById(2131493348).setVisibility(0);
        c.findViewById(2131493352).setVisibility(0);
        c.findViewById(2131493840).setVisibility(8);
        if (n) {
            c.findViewById(2131493352).setVisibility(8);
            c.a(false);
        }
        b.addHeaderView((View) c, null, false);
        Object3 = (HotCommentView) LayoutInflater.from((Context) this).inflate(2130903235, (ViewGroup) b, false);
        k = (TextView) ((HotCommentView) Object3).findViewById(2131493519);
        b.addHeaderView((View) Object3, null, false);
        ((HotCommentView) Object3).a(a);
        f = LayoutInflater.from((Context) this).inflate(2130903325, null);
        b.addFooterView(f);
        f.setVisibility(8);
        g = new z(getLayoutInflater());
        b.setAdapter((ListAdapter) g);
        o = (SendView) findViewById(2131494003);
        j();
        b();
        p = com.clilystudio.netbook.hpay100.a.a.r((Context) this, "community_user_gender_icon_toggle");
    }
}
