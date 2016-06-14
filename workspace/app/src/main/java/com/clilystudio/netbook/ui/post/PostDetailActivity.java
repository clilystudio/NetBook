package com.clilystudio.netbook.ui.post;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.VoteRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.Post;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostComment$PostCommentReply;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.Vote;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.N;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.widget.HotCommentView;
import com.clilystudio.netbook.widget.LinkifyTextView;
import com.clilystudio.netbook.widget.PostAgreeView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.sharesdk.framework.PlatformActionListener;

public class PostDetailActivity extends AbsPostActivity {
    private z f;
    private List<PostComment> g = new ArrayList<PostComment>();
    private cv h;
    private View[] i = new View[7];
    private ImageView[] j = new ImageView[7];
    private ProgressBar[] k = new ProgressBar[7];
    private TextView[] l = new TextView[7];
    private TextView[] m = new TextView[7];
    private TextView n;
    private View o;
    private View p;
    private Account q;
    private Post r;
    private String s;
    private boolean t = false;
    private int u;
    private boolean v = false;
    private av w;
    private View.OnClickListener x;

    public PostDetailActivity() {
        this.w = new cr(this);
        this.x = new cs(this);
    }

    static /* synthetic */ int a(PostDetailActivity postDetailActivity, int n) {
        postDetailActivity.u = n;
        return n;
    }

    public static Intent a(Context context, String string, String string2) {
        return new d().a(context, PostDetailActivity.class).a("PostBookId", string).a("post_type_key", string2).a();
    }

    static /* synthetic */ Post a(PostDetailActivity postDetailActivity) {
        return postDetailActivity.r;
    }

    static /* synthetic */ Post a(PostDetailActivity postDetailActivity, Post post) {
        postDetailActivity.r = post;
        return post;
    }

    static /* synthetic */ void a(PostDetailActivity postDetailActivity, int n, boolean bl) {
        postDetailActivity.a(n, false);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static /* synthetic */ void a(PostDetailActivity var0, Vote[] var1_1) {
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
            var0.i[var6_6] = var3_3[var6_6].findViewById(2131493732);
            var0.k[var6_6] = (ProgressBar) var3_3[var6_6].findViewById(2131493734);
            var0.l[var6_6] = (TextView) var3_3[var6_6].findViewById(2131493733);
            var0.m[var6_6] = (TextView) var3_3[var6_6].findViewById(2131493735);
            var4_4[var6_6] = (ImageView) var3_3[var6_6].findViewById(2131493728);
            var0.j[var6_6] = (ImageView) var3_3[var6_6].findViewById(2131493730);
            var0.j[var6_6].setTag(var6_6);
            var0.j[var6_6].setOnClickListener(var0.x);
            var5_5[var6_6] = (TextView) var3_3[var6_6].findViewById(2131493729);
        }
        var7_7 = am.e();
        if (var7_7 != null) {
            var9_8 = VoteRecord.getVoteRecords(var7_7.getUser().getId(), var0.r.get_id());
            var8_9 = var9_8 != null && !var9_8.isEmpty();
        } else {
            var8_9 = false;
            var9_8 = null;
        }
        var11_11 = (var10_10 = var1_1.length) > 0;
        var0.t = var11_11;
        var0.c.a(var10_10);
        switch (var10_10) {
            case 2: {
                for (var17_12 = 0; var17_12 < var10_10; ++var17_12) {
                    var5_5[var17_12].setText(var1_1[var17_12].getContent());
                }
                var4_4[1].setImageResource(2130838049);
                **break;
            }
            case 3: {
                for (var16_13 = 0; var16_13 < var10_10; ++var16_13) {
                    var5_5[var16_13].setText(var1_1[var16_13].getContent());
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                **break;
            }
            case 4: {
                for (var15_14 = 0; var15_14 < var10_10; ++var15_14) {
                    var5_5[var15_14].setText(var1_1[var15_14].getContent());
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                var4_4[3].setImageResource(2130838051);
                **break;
            }
            case 5: {
                for (var14_15 = 0; var14_15 < var10_10; ++var14_15) {
                    var5_5[var14_15].setText(var1_1[var14_15].getContent());
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                var4_4[3].setImageResource(2130838051);
                var4_4[4].setImageResource(2130838052);
                **break;
            }
            case 6: {
                for (var13_16 = 0; var13_16 < var10_10; ++var13_16) {
                    var5_5[var13_16].setText(var1_1[var13_16].getContent());
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                var4_4[3].setImageResource(2130838051);
                var4_4[4].setImageResource(2130838052);
                var4_4[5].setImageResource(2130838053);
            }
            lbl70:
            // 6 sources:
            default:
            {
                **GOTO lbl82
            }
            case 7:
        }
        for (var12_17 = 0; var12_17 < var10_10; ++var12_17) {
            var5_5[var12_17].setText(var1_1[var12_17].getContent());
        }
        var4_4[1].setImageResource(2130838049);
        var4_4[2].setImageResource(2130838050);
        var4_4[3].setImageResource(2130838051);
        var4_4[4].setImageResource(2130838052);
        var4_4[5].setImageResource(2130838053);
        var4_4[6].setImageResource(2130838054);
        lbl82:
        // 2 sources:
        if (var8_9 == false) return;
        var0.a(var9_8.get((int) 0).vote_item_index, true);
    }

    static /* synthetic */ void b(PostDetailActivity postDetailActivity) {
        if (postDetailActivity.r != null) {
            postDetailActivity.p.setVisibility(View.VISIBLE);
            cv cv2 = postDetailActivity.h = new cv(postDetailActivity, 0);
            Object[] arrobject = new String[]{postDetailActivity.r.get_id()};
            cv2.b(arrobject);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void b(PostDetailActivity postDetailActivity, Post post) {
        Author author = post.getAuthor();
        SmartImageView smartImageView = (SmartImageView) postDetailActivity.c.findViewById(2131492899);
        if (am.m((Context) postDetailActivity)) {
            smartImageView.setImageResource(2130837614);
        } else {
            smartImageView.setImageUrl(author.getScaleAvatar());
        }
        smartImageView.setOnClickListener(new ct(postDetailActivity, author));
        ((TextView) postDetailActivity.c.findViewById(2131492928)).setText(author.getNickname());
        ((TextView) postDetailActivity.c.findViewById(2131493631)).setText("lv." + author.getLv());
        ((TextView) postDetailActivity.c.findViewById(2131492935)).setText(t.e((Date) post.getCreated()));
        TextView textView = (TextView) postDetailActivity.c.findViewById(2131492936);
        if ("game".equals(postDetailActivity.s)) {
            textView.setVisibility(View.GONE);
        } else {
            textView.setText(post.getTitle());
        }
        ((LinkifyTextView) postDetailActivity.c.findViewById(2131492905)).setLinkifyText(post.getContent(), author.isOfficial());
        postDetailActivity.n = (TextView) postDetailActivity.c.findViewById(2131492947);
        postDetailActivity.n.setText("\u5171" + post.getVoteCount() + "\u4eba\u6295\u7968");
        ((TextView) postDetailActivity.findViewById(2131493519)).setText("\u5171" + post.getCommentCount() + "\u6761\u8bc4\u8bba");
        ImageView imageView = (ImageView) postDetailActivity.c.findViewById(2131493629);
        if (postDetailActivity.v) {
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
                a.s(postDetailActivity, post.get_id());
            } else if ("doyen".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(1);
            } else {
                imageView.setVisibility(View.GONE);
            }
        }
        ((PostAgreeView) postDetailActivity.c.findViewById(2131493840)).setPostId(postDetailActivity.a);
        postDetailActivity.c.a();
        postDetailActivity.c.b();
    }

    static /* synthetic */ z c(PostDetailActivity postDetailActivity) {
        return postDetailActivity.f;
    }

    static /* synthetic */ av d(PostDetailActivity postDetailActivity) {
        return postDetailActivity.w;
    }

    static /* synthetic */ View e(PostDetailActivity postDetailActivity) {
        return postDetailActivity.p;
    }

    static /* synthetic */ List f(PostDetailActivity postDetailActivity) {
        return postDetailActivity.g;
    }

    static /* synthetic */ void g(PostDetailActivity postDetailActivity) {
        postDetailActivity.p.setVisibility(View.VISIBLE);
        postDetailActivity.p.findViewById(2131493085).setVisibility(View.GONE);
        TextView textView = (TextView) postDetailActivity.p.findViewById(2131493798);
        textView.setText("\u70b9\u51fb\u91cd\u8bd5");
        postDetailActivity.p.setOnClickListener(new cq(postDetailActivity, textView));
    }

    static /* synthetic */ int h(PostDetailActivity postDetailActivity) {
        return postDetailActivity.u;
    }

    static /* synthetic */ Account i(PostDetailActivity postDetailActivity) {
        return postDetailActivity.q;
    }

    static /* synthetic */ cv j(PostDetailActivity postDetailActivity) {
        return postDetailActivity.h;
    }

    static /* synthetic */ boolean k(PostDetailActivity postDetailActivity) {
        return postDetailActivity.p();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n, boolean bl) {
        int n2 = this.r.getVoteCount();
        if (!bl) {
            ++n2;
        }
        this.n.setText("\u5171" + n2 + "\u4eba\u6295\u7968");
        Vote[] arrvote = this.r.getVotes();
        int n3 = arrvote.length;
        int[] arrn = new int[7];
        float[] arrf = new float[7];
        for (int i = 0; i < 7; ++i) {
            arrn[i] = i < n3 ? arrvote[i].getCount() : 0;
        }
        if (!bl) {
            arrn[n] = 1 + arrn[n];
        }
        int n4 = 0;
        while (n4 < 7) {
            this.j[n4].setEnabled(false);
            this.i[n4].setVisibility(View.VISIBLE);
            if (n4 == n) {
                this.j[n4].setImageResource(2130838056);
            } else {
                this.j[n4].setImageResource(2130838055);
            }
            arrf[n4] = n2 != 0 && n4 < n3 ? (float) arrn[n4] / (float) n2 : 0.0f;
            String string = String.valueOf((int) (0.5f + 100.0f * arrf[n4]));
            this.l[n4].setText("" + arrn[n4] + " \u7968");
            this.m[n4].setText(string + "%");
            this.k[n4].setProgress((int) (100.0f * arrf[n4]));
            ++n4;
        }
    }

    private boolean p() {
        if (this.q != null && this.q.getToken() != null) {
            return true;
        }
        Account account = am.e();
        if (account == null) {
            e.a((Activity) this, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c");
            this.startActivity(AuthLoginActivity.a(this));
            return false;
        }
        this.q = account;
        return true;
    }

    @Override
    public final void a(String string) {
        new N(this).b(this.r.get_id(), string);
    }

    @Override
    protected final void b() {
        this.i();
        cw cw2 = new cw(this, 0);
        Object[] arrobject = new String[]{this.a};
        cw2.b(arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void e(int n) {
        if (this.r == null) return;
        if (n == 0) {
            if (!this.p()) return;
            {
                new N(this).a(this.q.getToken(), this.r.get_id());
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
        this.o.setVisibility(View.VISIBLE);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void f(int n) {
        String string;
        if (this.r == null) {
            e.a((Activity) this, (String) "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        String string2 = this.r.getBook().getTitle();
        String string3 = this.r.getBook().getFullCover();
        String string4 = this.r.getShareLink();
        if ("ramble".equals(this.s)) {
            string2 = this.r.getTitle();
            string3 = null;
            if (this.t) {
                string = "\u6295\u7968\uff1a\u300c" + this.r.getTitle() + "\u300d\uff0c\u6211\u6295\u4e86\uff0c\u86ee\u6709\u610f\u601d\u7684\uff0c\u4f60\u600e\u4e48\u770b\uff1f";
            } else {
                string = "\u8bdd\u9898\uff1a\u300c" + this.r.getTitle() + "\u300d\uff0c\u86ee\u6709\u610f\u601d\u7684\uff0c\u4f60\u600e\u4e48\u770b\uff1f";
                string3 = null;
            }
        } else {
            string = this.t ? string2 + "\u7684\u6295\u7968\uff1a\u300c" + this.r.getTitle() + "\u300d\uff0c\u6211\u6295\u4e86\uff0c\u86ee\u6709\u610f\u601d\u7684\uff0c\u4f60\u600e\u4e48\u770b\uff1f" : string2 + "\u7684\u8bdd\u9898\uff1a\u300c" + this.r.getTitle() + "\u300d\uff0c\u86ee\u6709\u610f\u601d\u7684\uff0c\u4f60\u600e\u4e48\u770b\uff1f";
        }
        T.a(this, string2, string, string4, string3, n, (PlatformActionListener) ((Object) new cu(this)));
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
        this.g.add(0, postComment2);
        this.f.a(this.g);
        if (a.g()) {
            this.b.smoothScrollToPositionFromTop(2, 60);
            return;
        }
        this.b.setSelection(2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(2130903350);
        this.b("\u8be6\u60c5");
        if (a.a(this.getIntent())) {
            String[] arrstring = this.getIntent().getDataString().split("/");
            this.a = arrstring[-1 + arrstring.length];
            this.s = "ramble";
        } else {
            this.a = this.getIntent().getStringExtra("PostBookId");
            this.s = this.getIntent().getStringExtra("post_type_key");
        }
        this.o = this.findViewById(2131493838);
        this.a(true);
        this.b = (ScrollLoadListView) this.findViewById(2131493135);
        this.c = new PostHeader(this);
        this.b.addHeaderView(this.c, null, false);
        HotCommentView hotCommentView = (HotCommentView) LayoutInflater.from(this).inflate(2130903235, (ViewGroup) this.b, false);
        this.b.addHeaderView(hotCommentView, null, false);
        hotCommentView.a(this.a);
        this.p = LayoutInflater.from(this).inflate(2130903325, null);
        this.b.addFooterView(this.p);
        this.p.setVisibility(View.GONE);
        this.f = new z(this.getLayoutInflater());
        this.b.setAdapter(this.f);
        this.j();
        this.b();
        this.v = a.r(this, "community_user_gender_icon_toggle");
    }
}
