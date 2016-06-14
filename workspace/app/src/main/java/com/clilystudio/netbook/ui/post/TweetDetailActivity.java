package com.clilystudio.netbook.ui.post;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.VoteRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostComment$PostCommentReply;
import com.clilystudio.netbook.model.ReplyeeInfo;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.Tweet$VoteOption;
import com.clilystudio.netbook.model.TweetResult;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.N;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.widget.HotCommentView;
import com.clilystudio.netbook.widget.LinkifyTextView;
import com.clilystudio.netbook.widget.PostAgreeView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.SendView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.sharesdk.framework.PlatformActionListener;

public class TweetDetailActivity extends AbsPostActivity {
    private av A;
    private z f;
    private List<PostComment> g = new ArrayList<PostComment>();
    private dy h;
    private View i;
    private View j;
    private PostAgreeView k;
    private TextView l;
    private View[] m = new View[7];
    private ImageView[] n = new ImageView[7];
    private ProgressBar[] o = new ProgressBar[7];
    private TextView[] p = new TextView[7];
    private TextView[] q = new TextView[7];
    private TextView r;
    private Account s;
    private TweetResult t;
    private String u;
    private SendView v;
    private int w;
    private String x;
    private boolean y = false;
    private View.OnClickListener z;

    public TweetDetailActivity() {
        this.z = new dt(this);
        this.A = new dv(this);
    }

    static /* synthetic */ int a(TweetDetailActivity tweetDetailActivity, int n) {
        tweetDetailActivity.w = n;
        return n;
    }

    public static Intent a(Context context, String string) {
        return new d().a(context, TweetDetailActivity.class).a("TWEET_ID", string).a();
    }

    public static Intent a(Context context, String string, String string2) {
        return new d().a(context, TweetDetailActivity.class).a("TWEET_ID", string).a("TWEET_TYPE", string2).a();
    }

    static /* synthetic */ TweetResult a(TweetDetailActivity tweetDetailActivity, TweetResult tweetResult) {
        tweetDetailActivity.t = tweetResult;
        return tweetResult;
    }

    static /* synthetic */ String a(TweetDetailActivity tweetDetailActivity, String string) {
        tweetDetailActivity.x = string;
        return string;
    }

    static /* synthetic */ void a(TweetDetailActivity tweetDetailActivity, int n, boolean bl) {
        tweetDetailActivity.a(n, false);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static /* synthetic */ void a(TweetDetailActivity var0, Tweet$VoteOption[] var1_1) {
        if (var1_1 == null) return;
        if (var1_1.length == 0) {
            return;
        }
        var2_2 = new int[]{2131492940, 2131492941, 2131492942, 2131492943, 2131492944, 2131492945, 2131492946};
        var3_3 = new View[7];
        var4_4 = new ImageView[7];
        var5_5 = new TextView[7];
        for (var6_6 = 0; var6_6 < 7; ++var6_6) {
            var3_3[var6_6] = var0.c.findViewById(var2_2[var6_6]);
            var0.m[var6_6] = var3_3[var6_6].findViewById(2131493732);
            var0.o[var6_6] = (ProgressBar) var3_3[var6_6].findViewById(2131493734);
            var0.p[var6_6] = (TextView) var3_3[var6_6].findViewById(2131493733);
            var0.q[var6_6] = (TextView) var3_3[var6_6].findViewById(2131493735);
            var4_4[var6_6] = (ImageView) var3_3[var6_6].findViewById(2131493728);
            var0.n[var6_6] = (ImageView) var3_3[var6_6].findViewById(2131493730);
            var0.n[var6_6].setTag(var6_6);
            var0.n[var6_6].setOnClickListener(var0.z);
            var5_5[var6_6] = (TextView) var3_3[var6_6].findViewById(2131493729);
        }
        var7_7 = am.e();
        if (var7_7 != null) {
            var9_8 = VoteRecord.getVoteRecords(var7_7.getUser().getId(), var0.t.getTweet().get_id());
            var8_9 = var9_8 != null && !var9_8.isEmpty();
        } else {
            var8_9 = false;
            var9_8 = null;
        }
        var10_10 = var1_1.length;
        var0.c.a(var10_10);
        switch (var10_10) {
            case 2: {
                for (var16_11 = 0; var16_11 < var10_10; ++var16_11) {
                    var5_5[var16_11].setText(var1_1[var16_11].content);
                }
                var4_4[1].setImageResource(2130838049);
                **break;
            }
            case 3: {
                for (var15_12 = 0; var15_12 < var10_10; ++var15_12) {
                    var5_5[var15_12].setText(var1_1[var15_12].content);
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                **break;
            }
            case 4: {
                for (var14_13 = 0; var14_13 < var10_10; ++var14_13) {
                    var5_5[var14_13].setText(var1_1[var14_13].content);
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                var4_4[3].setImageResource(2130838051);
                **break;
            }
            case 5: {
                for (var13_14 = 0; var13_14 < var10_10; ++var13_14) {
                    var5_5[var13_14].setText(var1_1[var13_14].content);
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                var4_4[3].setImageResource(2130838051);
                var4_4[4].setImageResource(2130838052);
                **break;
            }
            case 6: {
                for (var12_15 = 0; var12_15 < var10_10; ++var12_15) {
                    var5_5[var12_15].setText(var1_1[var12_15].content);
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                var4_4[3].setImageResource(2130838051);
                var4_4[4].setImageResource(2130838052);
                var4_4[5].setImageResource(2130838053);
            }
            lbl69:
            // 6 sources:
            default:
            {
                **GOTO lbl81
            }
            case 7:
        }
        for (var11_16 = 0; var11_16 < var10_10; ++var11_16) {
            var5_5[var11_16].setText(var1_1[var11_16].content);
        }
        var4_4[1].setImageResource(2130838049);
        var4_4[2].setImageResource(2130838050);
        var4_4[3].setImageResource(2130838051);
        var4_4[4].setImageResource(2130838052);
        var4_4[5].setImageResource(2130838053);
        var4_4[6].setImageResource(2130838054);
        lbl81:
        // 2 sources:
        if (var8_9 == false) return;
        var0.a(var9_8.get((int) 0).vote_item_index, true);
    }

    static /* synthetic */ boolean a(TweetDetailActivity tweetDetailActivity) {
        return tweetDetailActivity.q();
    }

    static /* synthetic */ Account b(TweetDetailActivity tweetDetailActivity) {
        return tweetDetailActivity.s;
    }

    static /* synthetic */ String b(TweetDetailActivity tweetDetailActivity, String string) {
        tweetDetailActivity.u = string;
        return string;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void b(TweetDetailActivity tweetDetailActivity, TweetResult tweetResult) {
        User user = tweetResult.getUser();
        Tweet tweet = tweetResult.getTweet();
        SmartImageView smartImageView = (SmartImageView) tweetDetailActivity.c.findViewById(2131492899);
        if (am.m((Context) tweetDetailActivity)) {
            smartImageView.setImageResource(2130837614);
        } else {
            smartImageView.setImageUrl(user.getFullAvatar());
        }
        smartImageView.setOnClickListener(new dw(tweetDetailActivity, user));
        ((TextView) tweetDetailActivity.c.findViewById(2131492928)).setText(user.getNickname());
        ((TextView) tweetDetailActivity.c.findViewById(2131493631)).setText("lv." + user.getLv());
        ((TextView) tweetDetailActivity.c.findViewById(2131492935)).setText(t.e((Date) tweet.getCreated()));
        TextView textView = (TextView) tweetDetailActivity.c.findViewById(2131492936);
        tweetDetailActivity.r = (TextView) tweetDetailActivity.c.findViewById(2131492947);
        tweetDetailActivity.r.setText("\u5171" + tweetDetailActivity.t.getTweet().getVoteCount() + "\u4eba\u6295\u7968");
        if (tweetDetailActivity.u.equals("ARTICLE")) {
            textView.setVisibility(View.VISIBLE);
            textView.setText(tweet.getTitle());
        } else {
            textView.setVisibility(View.GONE);
        }
        ((LinkifyTextView) tweetDetailActivity.c.findViewById(2131492905)).setLinkifyText(tweet.getContent(), user.isOfficial());
        ((TextView) tweetDetailActivity.findViewById(2131493519)).setText("\u5171" + tweetDetailActivity.t.getTweet().getCommented() + "\u6761\u8bc4\u8bba");
        ImageView imageView = (ImageView) tweetDetailActivity.c.findViewById(2131493629);
        if (tweetDetailActivity.y) {
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
                a.s(tweetDetailActivity, tweet.get_id());
            } else if ("doyen".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(1);
            } else {
                imageView.setVisibility(View.GONE);
            }
        }
        ((PostAgreeView) tweetDetailActivity.c.findViewById(2131493840)).setPostId(tweetDetailActivity.a);
        tweetDetailActivity.c.a();
        tweetDetailActivity.c.b();
    }

    static /* synthetic */ TweetResult c(TweetDetailActivity tweetDetailActivity) {
        return tweetDetailActivity.t;
    }

    static /* synthetic */ int d(TweetDetailActivity tweetDetailActivity) {
        return tweetDetailActivity.w;
    }

    static /* synthetic */ void e(TweetDetailActivity tweetDetailActivity) {
        tweetDetailActivity.p();
    }

    static /* synthetic */ void f(TweetDetailActivity tweetDetailActivity) {
        tweetDetailActivity.v.a();
    }

    static /* synthetic */ void g(TweetDetailActivity tweetDetailActivity) {
        if (tweetDetailActivity.t != null) {
            tweetDetailActivity.g.clear();
            tweetDetailActivity.j.setVisibility(View.VISIBLE);
            dy dy2 = tweetDetailActivity.h = new dy(tweetDetailActivity, 0);
            Object[] arrobject = new String[]{tweetDetailActivity.t.getTweet().get_id()};
            dy2.execute(arrobject);
        }
    }

    static /* synthetic */ void h(TweetDetailActivity tweetDetailActivity) {
        Account account = am.e();
        if (account != null && G.a(account, tweetDetailActivity.t.getTweet().get_id())) {
            tweetDetailActivity.p();
        }
    }

    static /* synthetic */ av i(TweetDetailActivity tweetDetailActivity) {
        return tweetDetailActivity.A;
    }

    static /* synthetic */ View j(TweetDetailActivity tweetDetailActivity) {
        return tweetDetailActivity.j;
    }

    static /* synthetic */ List k(TweetDetailActivity tweetDetailActivity) {
        return tweetDetailActivity.g;
    }

    static /* synthetic */ z l(TweetDetailActivity tweetDetailActivity) {
        return tweetDetailActivity.f;
    }

    static /* synthetic */ dy m(TweetDetailActivity tweetDetailActivity) {
        return tweetDetailActivity.h;
    }

    static /* synthetic */ void n(TweetDetailActivity tweetDetailActivity) {
        if (tweetDetailActivity.t != null) {
            tweetDetailActivity.j.setVisibility(View.VISIBLE);
            tweetDetailActivity.h = new dy(tweetDetailActivity, 0);
            String string = "";
            if (tweetDetailActivity.g.size() > 0) {
                string = tweetDetailActivity.g.get(-1 + tweetDetailActivity.g.size()).get_id();
            }
            dy dy2 = tweetDetailActivity.h;
            Object[] arrobject = new String[]{tweetDetailActivity.t.getTweet().get_id(), string};
            dy2.execute(arrobject);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n, boolean bl) {
        int n2 = this.t.getTweet().getVoteCount();
        if (!bl) {
            ++n2;
        }
        this.r.setText("\u5171" + n2 + "\u4eba\u6295\u7968");
        Tweet$VoteOption[] arrtweet$VoteOption = this.t.getTweet().getVotes();
        int n3 = arrtweet$VoteOption.length;
        int[] arrn = new int[7];
        float[] arrf = new float[7];
        for (int i = 0; i < 7; ++i) {
            arrn[i] = i < n3 ? arrtweet$VoteOption[i].count : 0;
        }
        if (!bl) {
            arrn[n] = 1 + arrn[n];
        }
        int n4 = 0;
        while (n4 < 7) {
            this.n[n4].setEnabled(false);
            this.m[n4].setVisibility(View.VISIBLE);
            if (n4 == n) {
                this.n[n4].setImageResource(2130838056);
            } else {
                this.n[n4].setImageResource(2130838055);
            }
            arrf[n4] = n2 != 0 && n4 < n3 ? (float) arrn[n4] / (float) n2 : 0.0f;
            String string = String.valueOf((int) (0.5f + 100.0f * arrf[n4]));
            this.p[n4].setText("" + arrn[n4] + " \u7968");
            this.q[n4].setText(string + "%");
            this.o[n4].setProgress((int) (100.0f * arrf[n4]));
            ++n4;
        }
    }

    private void p() {
        this.k.setAgree(true);
        Drawable drawable = this.getResources().getDrawable(2130838111);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        this.l.setCompoundDrawables(drawable, null, null, null);
    }

    private boolean q() {
        if (this.s != null && this.s.getToken() != null) {
            return true;
        }
        Account account = am.e();
        if (account == null) {
            e.a((Activity) this, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c");
            this.startActivity(AuthLoginActivity.a(this));
            return false;
        }
        this.s = account;
        return true;
    }

    @Override
    protected final void a(Account account, String string) {
        dD dD2 = new dD(this, this, 2131034430);
        String[] arrstring = new String[]{account.getToken(), this.a, string};
        dD2.b(arrstring);
    }

    @Override
    protected final void a(ReplyeeInfo replyeeInfo, String string) {
        this.g(string);
        Account account = am.a((Activity) this);
        if (account == null) {
            return;
        }
        if (string.length() > 512) {
            e.a((Activity) this, (int) 2131034305);
            return;
        }
        dB dB2 = new dB(this, this, 2131034430);
        String[] arrstring = new String[]{account.getToken(), this.a, replyeeInfo.getCommentId(), string};
        dB2.b(arrstring);
    }

    @Override
    public final void a(String string) {
        new N(this).a(this.t.getTweet().get_id(), string, true);
    }

    @Override
    protected final void b() {
        this.i();
        dz dz2 = new dz(this, 0);
        Object[] arrobject = new String[]{this.a};
        dz2.b(arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void e(int n) {
        if (this.t == null) return;
        if (n == 0) {
            if (!this.q()) return;
            {
                new N(this).a(this.s.getToken(), this.t.getTweet().get_id());
                return;
            }
        }
        if (n != 1) {
            return;
        }
        this.a(null);
    }

    @Override
    public final void f() {
        super.f();
        this.i.setVisibility(View.VISIBLE);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void f(int n) {
        if (this.t == null) {
            e.a((Activity) this, (String) "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        Tweet tweet = this.t.getTweet();
        String string = "ARTICLE".equals(this.u) ? tweet.getTitle() : null;
        String string2 = tweet.getShareLinkUrl();
        T.a(this, string, "\u52a8\u6001\uff1a\u300c" + string + "\u300d\uff0c\u86ee\u6709\u610f\u601d\u7684\uff0c\u4f60\u600e\u4e48\u770b\uff1f", string2, null, n, (PlatformActionListener) ((Object) new dx(this)));
    }

    @Override
    public final void j() {
    }

    @Override
    public final String n() {
        return this.a;
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value = 11)
    @Override
    protected final void o() {
        List<PostComment> list = this.g;
        PostComment postComment = null;
        if (list != null) {
            int n = this.g.size();
            postComment = null;
            if (n > 0) {
                postComment = this.g.get(0);
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
        postComment2.set_id(this.x);
        this.g.add(0, postComment2);
        this.f.a(this.g);
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
        this.b("\u52a8\u6001\u8be6\u60c5");
        this.a = this.getIntent().getStringExtra("TWEET_ID");
        this.u = this.getIntent().getStringExtra("TWEET_TYPE");
        this.i = this.findViewById(2131493838);
        this.a(true);
        this.b = (ScrollLoadListView) this.findViewById(2131493135);
        this.c = new PostHeader(this);
        this.c.a(false);
        this.b.addHeaderView(this.c, null, false);
        this.k = (PostAgreeView) this.c.findViewById(2131493840);
        this.l = (TextView) this.c.findViewById(2131493841);
        Drawable drawable = this.getResources().getDrawable(2130838109);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        this.l.setCompoundDrawables(drawable, null, null, null);
        this.l.setText("\u8f6c\u53d1");
        this.k.setOnClickListener((View.OnClickListener) ((Object) new du(this)));
        HotCommentView hotCommentView = (HotCommentView) LayoutInflater.from(this).inflate(2130903235, (ViewGroup) this.b, false);
        this.b.addHeaderView(hotCommentView, null, false);
        hotCommentView.a(this.a);
        this.j = LayoutInflater.from(this).inflate(2130903325, null);
        this.b.addFooterView(this.j);
        this.j.setVisibility(View.GONE);
        this.f = new z(this.getLayoutInflater());
        this.b.setAdapter(this.f);
        this.v = (SendView) this.findViewById(2131494003);
        this.b();
        this.y = a.r(this, "community_user_gender_icon_toggle");
    }
}
