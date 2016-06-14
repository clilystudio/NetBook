package com.clilystudio.netbook.ui.post;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.clilystudio.netbook.am;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
import java.util.Date;
import java.util.List;

public class ReviewActivity extends AbsPostActivity {
    private View f;
    private z g;
    private List<PostComment> h = new ArrayList<PostComment>();
    private cD i;
    private View j;
    private TextView k;
    private Account l;
    private Review m;
    private boolean n = false;
    private SendView o;
    private boolean p = false;
    private av q;
    private View.OnClickListener r;

    public ReviewActivity() {
        this.q = new cz(this);
        this.r = new cB(this);
    }

    static /* synthetic */ Review a(ReviewActivity reviewActivity, Review review) {
        reviewActivity.m = review;
        return review;
    }

    static /* synthetic */ void a(ReviewActivity reviewActivity) {
        reviewActivity.o.a();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(ReviewActivity reviewActivity, Tweet tweet) {
        User user = tweet.getUser();
        SmartImageView smartImageView = (SmartImageView) reviewActivity.c.findViewById(2131492899);
        if (am.m((Context) reviewActivity)) {
            smartImageView.setImageResource(2130837614);
        } else {
            smartImageView.setImageUrl(user.getFullAvatar());
        }
        ((TextView) reviewActivity.c.findViewById(2131492928)).setText(user.getNickname());
        ((TextView) reviewActivity.c.findViewById(2131493631)).setText("lv." + user.getLv());
        ((TextView) reviewActivity.c.findViewById(2131492935)).setText(t.e((Date) tweet.getCreated()));
        ((TextView) reviewActivity.c.findViewById(2131492936)).setText(tweet.getTitle());
        ((LinkifyTextView) reviewActivity.c.findViewById(2131492905)).setLinkifyText(tweet.getContent(), false);
        reviewActivity.k.setText("\u5171" + tweet.getCommented() + "\u6761\u8bc4\u8bba");
        ((CoverView) reviewActivity.c.findViewById(2131493349)).setImageUrl(tweet.getBook().getCover());
        ((TextView) reviewActivity.c.findViewById(2131493350)).setText(tweet.getBook().getTitle());
        ((RatingView) reviewActivity.c.findViewById(2131493351)).setValue(tweet.getScore());
        ImageView imageView = (ImageView) reviewActivity.c.findViewById(2131493629);
        if (reviewActivity.p) {
            String string = user.getGender();
            if ("male".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(2);
            } else if ("female".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(3);
            } else {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(4);
            }
        } else {
            String string = user.getType();
            if ("official".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(0);
                a.s(reviewActivity, tweet.get_id());
            } else if ("doyen".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(1);
            } else {
                imageView.setVisibility(View.GONE);
            }
        }
        if (!reviewActivity.n) {
            ((PostUsefulView) reviewActivity.c.findViewById(2131493352)).setPost(reviewActivity.m);
        }
        reviewActivity.c.findViewById(2131493348).setOnClickListener(reviewActivity.r);
        reviewActivity.c.a();
        reviewActivity.c.b();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void b(ReviewActivity reviewActivity) {
        if (reviewActivity.n) {
            int n = reviewActivity.h.size();
            String string = null;
            if (n > 0) {
                string = reviewActivity.h.get(-1 + reviewActivity.h.size()).get_id();
            }
            cF cF2 = new cF(reviewActivity, 0);
            String[] arrstring = new String[]{reviewActivity.a, string};
            cF2.b(arrstring);
            return;
        } else {
            if (reviewActivity.m == null) return;
            {
                reviewActivity.f.setVisibility(View.VISIBLE);
                cD cD2 = reviewActivity.i = new cD(reviewActivity, 0);
                String[] arrstring = new String[]{reviewActivity.m.get_id()};
                cD2.b(arrstring);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void b(ReviewActivity reviewActivity, Review review) {
        Author author = review.getAuthor();
        SmartImageView smartImageView = (SmartImageView) reviewActivity.c.findViewById(2131492899);
        if (am.m((Context) reviewActivity)) {
            smartImageView.setImageResource(2130837614);
        } else {
            smartImageView.setImageUrl(author.getScaleAvatar());
            smartImageView.setOnClickListener(new cA(reviewActivity, author));
        }
        ((TextView) reviewActivity.c.findViewById(2131492928)).setText(author.getNickname());
        ((TextView) reviewActivity.c.findViewById(2131493631)).setText("lv." + author.getLv());
        ((TextView) reviewActivity.c.findViewById(2131492935)).setText(t.e((Date) review.getCreated()));
        ((TextView) reviewActivity.c.findViewById(2131492936)).setText(review.getTitle());
        ((LinkifyTextView) reviewActivity.c.findViewById(2131492905)).setLinkifyText(review.getContent(), author.isOfficial());
        reviewActivity.k.setText("\u5171" + review.getCommentCount() + "\u6761\u8bc4\u8bba");
        ((CoverView) reviewActivity.c.findViewById(2131493349)).setImageUrl(review.getBook().getFullCover());
        ((TextView) reviewActivity.c.findViewById(2131493350)).setText(review.getBook().getTitle());
        ((RatingView) reviewActivity.c.findViewById(2131493351)).setValue(review.getRating());
        ImageView imageView = (ImageView) reviewActivity.c.findViewById(2131493629);
        if (reviewActivity.p) {
            String string = author.getGender();
            if ("male".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(2);
            } else if ("female".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(3);
            } else {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(4);
            }
        } else {
            String string = author.getType();
            if ("official".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(0);
                a.s(reviewActivity, review.get_id());
            } else if ("doyen".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(1);
            } else {
                imageView.setVisibility(View.GONE);
            }
        }
        ((PostUsefulView) reviewActivity.c.findViewById(2131493352)).setPost(reviewActivity.m);
        reviewActivity.c.findViewById(2131493348).setOnClickListener(reviewActivity.r);
        reviewActivity.c.a();
        reviewActivity.c.b();
    }

    static /* synthetic */ av c(ReviewActivity reviewActivity) {
        return reviewActivity.q;
    }

    static /* synthetic */ View d(ReviewActivity reviewActivity) {
        return reviewActivity.f;
    }

    static /* synthetic */ List e(ReviewActivity reviewActivity) {
        return reviewActivity.h;
    }

    static /* synthetic */ z f(ReviewActivity reviewActivity) {
        return reviewActivity.g;
    }

    static /* synthetic */ void g(ReviewActivity reviewActivity) {
        reviewActivity.f.setVisibility(View.VISIBLE);
        reviewActivity.f.findViewById(2131493085).setVisibility(View.GONE);
        TextView textView = (TextView) reviewActivity.f.findViewById(2131493798);
        textView.setText("\u70b9\u51fb\u52a0\u8f7d\u8bc4\u8bba");
        reviewActivity.f.setOnClickListener(new cy(reviewActivity, textView));
    }

    static /* synthetic */ Review h(ReviewActivity reviewActivity) {
        return reviewActivity.m;
    }

    static /* synthetic */ cD i(ReviewActivity reviewActivity) {
        return reviewActivity.i;
    }

    @Override
    protected final void a(Account account, String string) {
        if (!this.n) {
            super.a(account, string);
            return;
        }
        cI cI2 = new cI(this, this, 2131034430);
        String[] arrstring = new String[]{account.getToken(), this.a, string};
        cI2.b(arrstring);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final void a(ReplyeeInfo replyeeInfo, String string) {
        if (!this.n) {
            super.a(replyeeInfo, string);
            return;
        }
        this.g(string);
        Account account = am.a((Activity) this);
        if (account == null) return;
        {
            if (string.length() > 512) {
                e.a((Activity) this, (int) 2131034305);
                return;
            }
        }
        cH cH2 = new cH(this, this, 2131034430);
        String[] arrstring = new String[]{account.getToken(), this.a, replyeeInfo.getCommentId(), string};
        cH2.b(arrstring);
    }

    @Override
    public final void a(String string) {
        new N(this).b(this.m.get_id(), string);
    }

    @Override
    protected final void b() {
        this.i();
        if (!this.n) {
            cE cE2 = new cE(this, 0);
            String[] arrstring = new String[]{this.a};
            cE2.b(arrstring);
            return;
        }
        cG cG2 = new cG(this, 0);
        String[] arrstring = new String[]{this.a};
        cG2.b(arrstring);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final void e(int n) {
        int n2 = 1;
        if (this.m == null) {
            return;
        }
        if (n == n2) {
            this.a(null);
            return;
        }
        if (n != 0) return;
        Account account = am.e();
        if (account == null) {
            e.a((Activity) this, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c");
            this.startActivity(AuthLoginActivity.a(this));
            return;
        }
        this.l = account;
        if (n2 == 0) return;
        new N(this).a(this.l.getToken(), this.m.get_id());
    }

    @Override
    public final void f() {
        super.f();
        this.j.setVisibility(View.VISIBLE);
    }

    @Override
    public final void f(int n) {
        if (this.m == null) {
            e.a((Activity) this, (String) "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        String string = this.m.getBook().getTitle();
        String string2 = this.m.getBook().getFullCover();
        T.a(this, string, string + "\u7684\u4e66\u8bc4\uff1a\u300c" + this.m.getTitle() + "\u300d\uff0c \u697c\u4e3b\u4f60\u5199\u7684\u8fd9\u4e48\u8d5e\uff0c\u4f60\u7684\u5c0f\u4f19\u4f34\u77e5\u9053\u5417\uff1f", this.m.getShareLink(), string2, n, new cC(this));
    }

    @Override
    public final void h() {
        super.h();
        this.j.setVisibility(View.GONE);
    }

    @Override
    public final void i() {
        super.i();
        this.j.setVisibility(View.GONE);
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value = 11)
    @Override
    protected final void o() {
        List<PostComment> list = this.h;
        PostComment postComment = null;
        if (list != null) {
            int n = this.h.size();
            postComment = null;
            if (n > 0) {
                postComment = this.h.get(0);
            }
        }
        User user = am.e().getUser();
        Author author = new Author();
        author.setAvatar(user.getAvatar());
        author.setNickname(user.getNickname());
        author.setLv(user.getLv());
        PostComment postComment2 = new PostComment();
        postComment2.setAuthor(author);
        postComment2.setContent(this.l());
        postComment2.setCreated(new Date());
        if (this.e != null) {
            PostComment$PostCommentReply postComment$PostCommentReply = new PostComment$PostCommentReply();
            postComment$PostCommentReply.setFloor(this.e.getFloor());
            postComment$PostCommentReply.setAuthor(this.e.getAuthor());
            postComment2.setReplyTo(postComment$PostCommentReply);
        }
        if (postComment != null) {
            postComment2.setFloor(1 + postComment.getFloor());
        } else {
            postComment2.setFloor(1);
        }
        this.h.add(0, postComment2);
        this.g.a(this.h);
        if (a.g()) {
            this.b.smoothScrollToPositionFromTop(2, 60);
            return;
        }
        this.b.setSelection(2);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(2130903350);
        this.b("\u4e66\u8bc4\u8be6\u60c5");
        String string = this.getIntent().getStringExtra("EXTRA_TYPE_NAME");
        if (!TextUtils.isEmpty(string)) {
            this.n = string.equals("BOOK_COMMENT");
        }
        this.a = this.getIntent().getStringExtra("extraReviewId");
        this.b = (ScrollLoadListView) this.findViewById(2131493135);
        this.j = this.findViewById(2131493838);
        this.a(true);
        this.c = new PostHeader(this);
        this.c.findViewById(2131493348).setVisibility(View.VISIBLE);
        this.c.findViewById(2131493352).setVisibility(View.VISIBLE);
        this.c.findViewById(2131493840).setVisibility(View.GONE);
        if (this.n) {
            this.c.findViewById(2131493352).setVisibility(View.GONE);
            this.c.a(false);
        }
        this.b.addHeaderView(this.c, null, false);
        HotCommentView hotCommentView = (HotCommentView) LayoutInflater.from(this).inflate(2130903235, (ViewGroup) this.b, false);
        this.k = (TextView) hotCommentView.findViewById(2131493519);
        this.b.addHeaderView(hotCommentView, null, false);
        hotCommentView.a(this.a);
        this.f = LayoutInflater.from(this).inflate(2130903325, null);
        this.b.addFooterView(this.f);
        this.f.setVisibility(View.GONE);
        this.g = new z(this.getLayoutInflater());
        this.b.setAdapter(this.g);
        this.o = (SendView) this.findViewById(2131494003);
        this.j();
        this.b();
        this.p = a.r(this, "community_user_gender_icon_toggle");
    }
}
