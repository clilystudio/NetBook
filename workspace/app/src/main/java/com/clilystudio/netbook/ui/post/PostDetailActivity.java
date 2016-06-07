package com.clilystudio.netbook.ui.post;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.Post;
import com.clilystudio.netbook.model.PostBook;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostComment.PostCommentReply;
import com.clilystudio.netbook.model.ReplyeeInfo;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.Vote;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.N;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.widget.HotCommentView;
import com.clilystudio.netbook.widget.PostHeader;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PostDetailActivity extends AbsPostActivity
{
  private z f;
  private List<PostComment> g = new ArrayList();
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
  private av w = new cr(this);
  private View.OnClickListener x = new cs(this);

  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    return new d().a(paramContext, PostDetailActivity.class).a("PostBookId", paramString1).a("post_type_key", paramString2).a();
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    int i1 = this.r.getVoteCount();
    if (!paramBoolean)
      i1++;
    this.n.setText("共" + i1 + "人投票");
    Vote[] arrayOfVote = this.r.getVotes();
    int i2 = arrayOfVote.length;
    int[] arrayOfInt = new int[7];
    float[] arrayOfFloat = new float[7];
    int i3 = 0;
    if (i3 < 7)
    {
      if (i3 < i2)
        arrayOfInt[i3] = arrayOfVote[i3].getCount();
      while (true)
      {
        i3++;
        break;
        arrayOfInt[i3] = 0;
      }
    }
    if (!paramBoolean)
      arrayOfInt[paramInt] = (1 + arrayOfInt[paramInt]);
    int i4 = 0;
    if (i4 < 7)
    {
      this.j[i4].setEnabled(false);
      this.i[i4].setVisibility(0);
      if (i4 == paramInt)
      {
        this.j[i4].setImageResource(2130838056);
        label178: if ((i1 == 0) || (i4 >= i2))
          break label323;
        arrayOfInt[i4] /= i1;
      }
      while (true)
      {
        String str = String.valueOf((int)(0.5F + 100.0F * arrayOfFloat[i4]));
        this.l[i4].setText(arrayOfInt[i4] + " 票");
        this.m[i4].setText(str + "%");
        this.k[i4].setProgress((int)(100.0F * arrayOfFloat[i4]));
        i4++;
        break;
        this.j[i4].setImageResource(2130838055);
        break label178;
        label323: arrayOfFloat[i4] = 0.0F;
      }
    }
  }

  private boolean p()
  {
    if ((this.q != null) && (this.q.getToken() != null))
      return true;
    Account localAccount = am.e();
    if (localAccount == null)
    {
      e.a(this, "请登录后再操作");
      startActivity(AuthLoginActivity.a(this));
      return false;
    }
    this.q = localAccount;
    return true;
  }

  public final void a(String paramString)
  {
    new N(this).b(this.r.get_id(), paramString);
  }

  protected final void b()
  {
    i();
    cw localcw = new cw(this, 0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.a;
    localcw.b(arrayOfString);
  }

  public final void e(int paramInt)
  {
    if (this.r == null);
    do
      while (true)
      {
        return;
        if (paramInt != 0)
          break;
        if (!p())
          continue;
        new N(this).a(this.q.getToken(), this.r.get_id());
        return;
      }
    while (paramInt != 1);
    a(null);
  }

  public final void f()
  {
    super.f();
    this.o.setVisibility(0);
  }

  public final void f(int paramInt)
  {
    if (this.r == null)
    {
      e.a(this, "操作失败，请重试");
      return;
    }
    String str1 = this.r.getBook().getTitle();
    String str2 = this.r.getBook().getFullCover();
    String str3 = this.r.getShareLink();
    String str4;
    if ("ramble".equals(this.s))
    {
      str1 = this.r.getTitle();
      str2 = null;
      if (this.t)
        str4 = "投票：「" + this.r.getTitle() + "」，我投了，蛮有意思的，你怎么看？";
    }
    while (true)
    {
      T.a(this, str1, str4, str3, str2, paramInt, new cu(this));
      return;
      str4 = "话题：「" + this.r.getTitle() + "」，蛮有意思的，你怎么看？";
      str2 = null;
      continue;
      if (this.t)
      {
        str4 = str1 + "的投票：「" + this.r.getTitle() + "」，我投了，蛮有意思的，你怎么看？";
        continue;
      }
      str4 = str1 + "的话题：「" + this.r.getTitle() + "」，蛮有意思的，你怎么看？";
    }
  }

  public final String n()
  {
    return this.a;
  }

  @TargetApi(11)
  protected final void o()
  {
    List localList = this.g;
    PostComment localPostComment1 = null;
    if (localList != null)
    {
      int i1 = this.g.size();
      localPostComment1 = null;
      if (i1 > 0)
        localPostComment1 = (PostComment)this.g.get(0);
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
    if (this.e != null)
    {
      PostComment.PostCommentReply localPostCommentReply = new PostComment.PostCommentReply();
      localPostCommentReply.setFloor(this.e.getFloor());
      localPostCommentReply.setAuthor(this.e.getAuthor());
      localPostComment2.setReplyTo(localPostCommentReply);
    }
    if (localPostComment1 != null)
      localPostComment2.setFloor(1 + localPostComment1.getFloor());
    while (true)
    {
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

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(2130903350);
    b("详情");
    if (a.a(getIntent()))
    {
      String[] arrayOfString = getIntent().getDataString().split("/");
      this.a = arrayOfString[(-1 + arrayOfString.length)];
    }
    for (this.s = "ramble"; ; this.s = getIntent().getStringExtra("post_type_key"))
    {
      this.o = findViewById(2131493838);
      a(true);
      this.b = ((ScrollLoadListView)findViewById(2131493135));
      this.c = new PostHeader(this);
      this.b.addHeaderView(this.c, null, false);
      HotCommentView localHotCommentView = (HotCommentView)LayoutInflater.from(this).inflate(2130903235, this.b, false);
      this.b.addHeaderView(localHotCommentView, null, false);
      localHotCommentView.a(this.a);
      this.p = LayoutInflater.from(this).inflate(2130903325, null);
      this.b.addFooterView(this.p);
      this.p.setVisibility(8);
      this.f = new z(getLayoutInflater());
      this.b.setAdapter(this.f);
      j();
      b();
      this.v = a.r(this, "community_user_gender_icon_toggle");
      return;
      this.a = getIntent().getStringExtra("PostBookId");
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.PostDetailActivity
 * JD-Core Version:    0.6.0
 */