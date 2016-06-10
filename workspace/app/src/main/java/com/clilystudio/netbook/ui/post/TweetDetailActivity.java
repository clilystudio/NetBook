package com.clilystudio.netbook.ui.post;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.ReplyeeInfo;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.TweetResult;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.N;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.widget.HotCommentView;
import com.clilystudio.netbook.widget.PostAgreeView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.SendView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TweetDetailActivity extends AbsPostActivity {
    private av A = new dv(this);
    private z f;
    private List<PostComment> g = new ArrayList();
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
    private View.OnClickListener z = new dt(this);

    public static Intent a(Context paramContext, String paramString) {
        return new d().a(paramContext, TweetDetailActivity.class).a("TWEET_ID", paramString).a();
    }

    public static Intent a(Context paramContext, String paramString1, String paramString2) {
        return new d().a(paramContext, TweetDetailActivity.class).a("TWEET_ID", paramString1).a("TWEET_TYPE", paramString2).a();
    }

    private void a(int paramInt, boolean paramBoolean) {
        int i1 = this.t.getTweet().getVoteCount();
        if (!paramBoolean)
            i1++;
        this.r.setText("共" + i1 + "人投票");
        Tweet.VoteOption[] arrayOfVoteOption = this.t.getTweet().getVotes();
        int i2 = arrayOfVoteOption.length;
        int[] arrayOfInt = new int[7];
        float[] arrayOfFloat = new float[7];
        int i3 = 0;
        if (i3 < 7) {
            if (i3 < i2)
                arrayOfInt[i3] = arrayOfVoteOption[i3].count;
            while (true) {
                i3++;
                break;
                arrayOfInt[i3] = 0;
            }
        }
        if (!paramBoolean)
            arrayOfInt[paramInt] = (1 + arrayOfInt[paramInt]);
        int i4 = 0;
        if (i4 < 7) {
            this.n[i4].setEnabled(false);
            this.m[i4].setVisibility(0);
            if (i4 == paramInt) {
                this.n[i4].setImageResource(2130838056);
                label184:
                if ((i1 == 0) || (i4 >= i2))
                    break label329;
                arrayOfInt[i4] /= i1;
            }
            while (true) {
                String str = String.valueOf((int) (0.5F + 100.0F * arrayOfFloat[i4]));
                this.p[i4].setText(arrayOfInt[i4] + " 票");
                this.q[i4].setText(str + "%");
                this.o[i4].setProgress((int) (100.0F * arrayOfFloat[i4]));
                i4++;
                break;
                this.n[i4].setImageResource(2130838055);
                break label184;
                label329:
                arrayOfFloat[i4] = 0.0F;
            }
        }
    }

    private void p() {
        this.k.setAgree(true);
        Drawable localDrawable = getResources().getDrawable(2130838111);
        localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
        this.l.setCompoundDrawables(localDrawable, null, null, null);
    }

    private boolean q() {
        if ((this.s != null) && (this.s.getToken() != null))
            return true;
        Account localAccount = am.e();
        if (localAccount == null) {
            e.a(this, "请登录后再操作");
            startActivity(AuthLoginActivity.a(this));
            return false;
        }
        this.s = localAccount;
        return true;
    }

    protected final void a(Account paramAccount, String paramString) {
        dD localdD = new dD(this, this, 2131034430);
        String[] arrayOfString = new String[3];
        arrayOfString[0] = paramAccount.getToken();
        arrayOfString[1] = this.a;
        arrayOfString[2] = paramString;
        localdD.b(arrayOfString);
    }

    protected final void a(ReplyeeInfo paramReplyeeInfo, String paramString) {
        g(paramString);
        Account localAccount = am.a(this);
        if (localAccount == null)
            return;
        if (paramString.length() > 512) {
            e.a(this, 2131034305);
            return;
        }
        dB localdB = new dB(this, this, 2131034430);
        String[] arrayOfString = new String[4];
        arrayOfString[0] = localAccount.getToken();
        arrayOfString[1] = this.a;
        arrayOfString[2] = paramReplyeeInfo.getCommentId();
        arrayOfString[3] = paramString;
        localdB.b(arrayOfString);
    }

    public final void a(String paramString) {
        new N(this).a(this.t.getTweet().get_id(), paramString, true);
    }

    protected final void b() {
        i();
        dz localdz = new dz(this, 0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.a;
        localdz.b(arrayOfString);
    }

    public final void e(int paramInt) {
        if (this.t == null) ;
        do
            while (true) {
                return;
                if (paramInt != 0)
                    break;
                if (!q())
                    continue;
                new N(this).a(this.s.getToken(), this.t.getTweet().get_id());
                return;
            }
        while (paramInt != 1);
        a(null);
    }

    public final void f() {
        super.f();
        this.i.setVisibility(0);
    }

    public final void f(int paramInt) {
        if (this.t == null) {
            e.a(this, "操作失败，请重试");
            return;
        }
        Tweet localTweet = this.t.getTweet();
        if ("ARTICLE".equals(this.u)) ;
        for (String str1 = localTweet.getTitle(); ; str1 = null) {
            String str2 = localTweet.getShareLinkUrl();
            T.a(this, str1, "动态：「" + str1 + "」，蛮有意思的，你怎么看？", str2, null, paramInt, new dx(this));
            return;
        }
    }

    public final void j() {
    }

    public final String n() {
        return this.a;
    }

    @TargetApi(11)
    protected final void o() {
        List localList = this.g;
        PostComment localPostComment1 = null;
        if (localList != null) {
            int i1 = this.g.size();
            localPostComment1 = null;
            if (i1 > 0)
                localPostComment1 = (PostComment) this.g.get(0);
        }
        User localUser = am.e().getUser();
        Author localAuthor = new Author();
        localAuthor.setAvatar(localUser.getAvatar());
        localAuthor.setNickname(localUser.getNickname());
        localAuthor.setLv(localUser.getLv());
        PostComment localPostComment2 = new PostComment();
        localPostComment2.setAuthor(localAuthor);
        localPostComment2.setContent(l());
        localPostComment2.setCreated(new Date());
        if (this.e != null) {
            PostComment.PostCommentReply localPostCommentReply = new PostComment.PostCommentReply();
            localPostCommentReply.setFloor(this.e.getFloor());
            localPostCommentReply.setAuthor(this.e.getAuthor());
            localPostComment2.setReplyTo(localPostCommentReply);
        }
        if (localPostComment1 != null)
            localPostComment2.setFloor(1 + localPostComment1.getFloor());
        while (true) {
            localPostComment2.set_id(this.x);
            this.g.add(0, localPostComment2);
            this.f.a(this.g);
            if (!a.g())
                break;
            this.b.smoothScrollToPositionFromTop(2, 60);
            return;
            localPostComment2.setFloor(1);
        }
        this.b.setSelection(2);
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        a(2130903350);
        b("动态详情");
        this.a = getIntent().getStringExtra("TWEET_ID");
        this.u = getIntent().getStringExtra("TWEET_TYPE");
        this.i = findViewById(2131493838);
        a(true);
        this.b = ((ScrollLoadListView) findViewById(2131493135));
        this.c = new PostHeader(this);
        this.c.a(false);
        this.b.addHeaderView(this.c, null, false);
        this.k = ((PostAgreeView) this.c.findViewById(2131493840));
        this.l = ((TextView) this.c.findViewById(2131493841));
        Drawable localDrawable = getResources().getDrawable(2130838109);
        localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
        this.l.setCompoundDrawables(localDrawable, null, null, null);
        this.l.setText("转发");
        this.k.setOnClickListener(new du(this));
        HotCommentView localHotCommentView = (HotCommentView) LayoutInflater.from(this).inflate(2130903235, this.b, false);
        this.b.addHeaderView(localHotCommentView, null, false);
        localHotCommentView.a(this.a);
        this.j = LayoutInflater.from(this).inflate(2130903325, null);
        this.b.addFooterView(this.j);
        this.j.setVisibility(8);
        this.f = new z(getLayoutInflater());
        this.b.setAdapter(this.f);
        this.v = ((SendView) findViewById(2131494003));
        b();
        this.y = a.r(this, "community_user_gender_icon_toggle");
    }
}

