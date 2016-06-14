package com.clilystudio.netbook.ui.post;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.db.VoteRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.GirlTopic;
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

public class GirlTopicActivity extends AbsPostActivity {
    private View f;
    private z g;
    private List<PostComment> h = new ArrayList<PostComment>();
    private bq i;
    private TextView j;
    private View k;
    private Account l;
    private GirlTopic m;
    private View[] n = new View[7];
    private ImageView[] o = new ImageView[7];
    private ProgressBar[] p = new ProgressBar[7];
    private TextView[] q = new TextView[7];
    private TextView[] r = new TextView[7];
    private TextView s;
    private int t;
    private boolean u = false;
    private View.OnClickListener v;
    private av w;

    public GirlTopicActivity() {
        this.v = new bm(this);
        this.w = new bo(this);
    }

    static /* synthetic */ int a(GirlTopicActivity girlTopicActivity, int n) {
        girlTopicActivity.t = n;
        return n;
    }

    static /* synthetic */ GirlTopic a(GirlTopicActivity girlTopicActivity) {
        return girlTopicActivity.m;
    }

    static /* synthetic */ GirlTopic a(GirlTopicActivity girlTopicActivity, GirlTopic girlTopic) {
        girlTopicActivity.m = girlTopic;
        return girlTopic;
    }

    static /* synthetic */ void a(GirlTopicActivity girlTopicActivity, int n, boolean bl) {
        girlTopicActivity.a(n, false);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static /* synthetic */ void a(GirlTopicActivity var0, Vote[] var1_1) {
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
            var0.n[var6_6] = var3_3[var6_6].findViewById(2131493732);
            var0.p[var6_6] = (ProgressBar) var3_3[var6_6].findViewById(2131493734);
            var0.q[var6_6] = (TextView) var3_3[var6_6].findViewById(2131493733);
            var0.r[var6_6] = (TextView) var3_3[var6_6].findViewById(2131493735);
            var4_4[var6_6] = (ImageView) var3_3[var6_6].findViewById(2131493728);
            var0.o[var6_6] = (ImageView) var3_3[var6_6].findViewById(2131493730);
            var0.o[var6_6].setTag(var6_6);
            var0.o[var6_6].setOnClickListener(var0.v);
            var5_5[var6_6] = (TextView) var3_3[var6_6].findViewById(2131493729);
        }
        var7_7 = am.e();
        if (var7_7 != null) {
            var9_8 = VoteRecord.getVoteRecords(var7_7.getUser().getId(), var0.m.get_id());
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
                    var5_5[var16_11].setText(var1_1[var16_11].getContent());
                }
                var4_4[1].setImageResource(2130838049);
                **break;
            }
            case 3: {
                for (var15_12 = 0; var15_12 < var10_10; ++var15_12) {
                    var5_5[var15_12].setText(var1_1[var15_12].getContent());
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                **break;
            }
            case 4: {
                for (var14_13 = 0; var14_13 < var10_10; ++var14_13) {
                    var5_5[var14_13].setText(var1_1[var14_13].getContent());
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                var4_4[3].setImageResource(2130838051);
                **break;
            }
            case 5: {
                for (var13_14 = 0; var13_14 < var10_10; ++var13_14) {
                    var5_5[var13_14].setText(var1_1[var13_14].getContent());
                }
                var4_4[1].setImageResource(2130838049);
                var4_4[2].setImageResource(2130838050);
                var4_4[3].setImageResource(2130838051);
                var4_4[4].setImageResource(2130838052);
                **break;
            }
            case 6: {
                for (var12_15 = 0; var12_15 < var10_10; ++var12_15) {
                    var5_5[var12_15].setText(var1_1[var12_15].getContent());
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
            var5_5[var11_16].setText(var1_1[var11_16].getContent());
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

    static /* synthetic */ void b(GirlTopicActivity girlTopicActivity) {
        if (girlTopicActivity.m != null) {
            girlTopicActivity.f.setVisibility(View.VISIBLE);
            bq bq2 = girlTopicActivity.i = new bq(girlTopicActivity, 0);
            Object[] arrobject = new String[]{girlTopicActivity.m.get_id()};
            bq2.b(arrobject);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void b(GirlTopicActivity girlTopicActivity, GirlTopic girlTopic) {
        Author author = girlTopic.getAuthor();
        SmartImageView smartImageView = (SmartImageView) girlTopicActivity.c.findViewById(2131492899);
        if (am.m((Context) girlTopicActivity)) {
            smartImageView.setImageResource(2130837614);
        } else {
            smartImageView.setImageUrl(author.getScaleAvatar());
        }
        ((TextView) girlTopicActivity.c.findViewById(2131492928)).setText(author.getNickname());
        ((TextView) girlTopicActivity.c.findViewById(2131493631)).setText("lv." + author.getLv());
        ((TextView) girlTopicActivity.c.findViewById(2131492935)).setText(t.e((Date) girlTopic.getCreated()));
        ((TextView) girlTopicActivity.c.findViewById(2131492936)).setText(girlTopic.getTitle());
        ((LinkifyTextView) girlTopicActivity.c.findViewById(2131492905)).setLinkifyText(girlTopic.getContent(), author.isOfficial());
        girlTopicActivity.s = (TextView) girlTopicActivity.c.findViewById(2131492947);
        girlTopicActivity.s.setText("\u5171" + girlTopic.getVoteCount() + "\u4eba\u6295\u7968");
        girlTopicActivity.j.setText("\u5171" + girlTopic.getCommentCount() + "\u6761\u8bc4\u8bba");
        ImageView imageView = (ImageView) girlTopicActivity.c.findViewById(2131493629);
        if (girlTopicActivity.u) {
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
                a.s(girlTopicActivity, girlTopic.get_id());
            } else if ("doyen".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(1);
            } else {
                imageView.setVisibility(View.GONE);
            }
        }
        ((PostAgreeView) girlTopicActivity.c.findViewById(2131493840)).setPostId(girlTopicActivity.a);
        girlTopicActivity.c.a();
        girlTopicActivity.c.b();
    }

    static /* synthetic */ z c(GirlTopicActivity girlTopicActivity) {
        return girlTopicActivity.g;
    }

    static /* synthetic */ av d(GirlTopicActivity girlTopicActivity) {
        return girlTopicActivity.w;
    }

    static /* synthetic */ View e(GirlTopicActivity girlTopicActivity) {
        return girlTopicActivity.f;
    }

    static /* synthetic */ List f(GirlTopicActivity girlTopicActivity) {
        return girlTopicActivity.h;
    }

    static /* synthetic */ void g(GirlTopicActivity girlTopicActivity) {
        girlTopicActivity.f.setVisibility(View.VISIBLE);
        girlTopicActivity.f.findViewById(2131493085).setVisibility(View.GONE);
        TextView textView = (TextView) girlTopicActivity.f.findViewById(2131493798);
        textView.setText("\u70b9\u51fb\u52a0\u8f7d\u8bc4\u8bba");
        girlTopicActivity.f.setOnClickListener((View.OnClickListener) ((Object) new bn(girlTopicActivity, textView)));
    }

    static /* synthetic */ boolean h(GirlTopicActivity girlTopicActivity) {
        return girlTopicActivity.p();
    }

    static /* synthetic */ Account i(GirlTopicActivity girlTopicActivity) {
        return girlTopicActivity.l;
    }

    static /* synthetic */ int j(GirlTopicActivity girlTopicActivity) {
        return girlTopicActivity.t;
    }

    static /* synthetic */ bq k(GirlTopicActivity girlTopicActivity) {
        return girlTopicActivity.i;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n, boolean bl) {
        int n2 = this.m.getVoteCount();
        if (!bl) {
            ++n2;
        }
        this.s.setText("\u5171" + n2 + "\u4eba\u6295\u7968");
        Vote[] arrvote = this.m.getVotes();
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
            this.o[n4].setEnabled(false);
            this.n[n4].setVisibility(View.VISIBLE);
            if (n4 == n) {
                this.o[n4].setImageResource(2130838056);
            } else {
                this.o[n4].setImageResource(2130838055);
            }
            arrf[n4] = n2 != 0 && n4 < n3 ? (float) arrn[n4] / (float) n2 : 0.0f;
            String string = String.valueOf((int) (0.5f + 100.0f * arrf[n4]));
            this.q[n4].setText("" + arrn[n4] + " \u7968");
            this.r[n4].setText(string + "%");
            this.p[n4].setProgress((int) (100.0f * arrf[n4]));
            ++n4;
        }
    }

    private boolean p() {
        Account account = am.e();
        if (account == null) {
            e.a((Activity) this, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c");
            this.startActivity(AuthLoginActivity.a(this));
            return false;
        }
        this.l = account;
        return true;
    }

    @Override
    public final void a(String string) {
        new N(this).b(this.m.get_id(), string);
    }

    @Override
    protected final void b() {
        this.i();
        br br2 = new br(this, 0);
        Object[] arrobject = new String[]{this.a};
        br2.b(arrobject);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final void e(int n) {
        if (this.m == null) {
            return;
        }
        if (n == 1) {
            this.a(null);
            return;
        }
        if (n != 0) return;
        if (!this.p()) return;
        new N(this).a(this.l.getToken(), this.m.get_id());
    }

    @Override
    public final void f() {
        super.f();
        this.k.setVisibility(View.VISIBLE);
    }

    @Override
    public final void f(int n) {
        if (this.m == null) {
            e.a((Activity) this, (String) "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        T.a(this, this.m.getTitle(), "\u300c" + this.m.getTitle() + "\u300d   \u6211\u5728\u8fd9\u53d1\u73b0\u4e86\u597d\u591a\u597d\u770b\u7684\u5c0f\u8bf4\uff0c\u4f60\u4e5f\u6765\u627e\u627e\u770b\u5427", this.m.getShareLink(), null, n, (PlatformActionListener) ((Object) new bp(this)));
    }

    @Override
    public final void h() {
        super.h();
        this.k.setVisibility(View.GONE);
    }

    @Override
    public final void i() {
        super.i();
        this.k.setVisibility(View.GONE);
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
        this.b("\u5973\u751f\u533a\u8bdd\u9898\u8be6\u60c5");
        this.a = this.getIntent().getStringExtra("extraGirlTopicId");
        this.b = (ScrollLoadListView) this.findViewById(2131493135);
        this.k = this.findViewById(2131493838);
        this.a(true);
        this.c = new PostHeader(this);
        this.b.addHeaderView(this.c, null, false);
        HotCommentView hotCommentView = (HotCommentView) LayoutInflater.from(this).inflate(2130903235, (ViewGroup) this.b, false);
        this.j = (TextView) hotCommentView.findViewById(2131493519);
        this.b.addHeaderView(hotCommentView, null, false);
        hotCommentView.a(this.a);
        this.f = LayoutInflater.from(this).inflate(2130903325, null);
        this.b.addFooterView(this.f);
        this.f.setVisibility(View.GONE);
        this.g = new z(this.getLayoutInflater());
        this.b.setAdapter(this.g);
        this.j();
        this.b();
        this.u = a.r(this, "community_user_gender_icon_toggle");
    }
}
