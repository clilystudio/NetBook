package com.clilystudio.app.netbook.ui.post;

import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.adapter.z;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.Author;
import com.clilystudio.app.netbook.model.PostComment;
import com.clilystudio.app.netbook.model.PostComment.PostCommentReply;
import com.clilystudio.app.netbook.model.ReplyeeInfo;
import com.clilystudio.app.netbook.model.Review;
import com.clilystudio.app.netbook.model.ReviewBook;
import com.clilystudio.app.netbook.model.User;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.app.netbook.util.N;
import com.clilystudio.app.netbook.util.T;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.util.e;
import com.clilystudio.app.netbook.widget.HotCommentView;
import com.clilystudio.app.netbook.widget.PostHeader;
import com.clilystudio.app.netbook.widget.ScrollLoadListView;
import com.clilystudio.app.netbook.widget.SendView;
import com.clilystudio.app.netbook.widget.av;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReviewActivity extends AbsPostActivity
{
  private View f;
  private z g;
  private List<PostComment> h = new ArrayList();
  private cD i;
  private View j;
  private TextView k;
  private Account l;
  private Review m;
  private boolean n = false;
  private SendView o;
  private boolean p = false;
  private av q = new cz(this);
  private View.OnClickListener r = new cB(this);

  protected final void a(Account paramAccount, String paramString)
  {
    if (!this.n)
    {
      super.a(paramAccount, paramString);
      return;
    }
    cI localcI = new cI(this, this, 2131034430);
    String[] arrayOfString = new String[3];
    arrayOfString[0] = paramAccount.getToken();
    arrayOfString[1] = this.a;
    arrayOfString[2] = paramString;
    localcI.b(arrayOfString);
  }

  protected final void a(ReplyeeInfo paramReplyeeInfo, String paramString)
  {
    if (!this.n)
      super.a(paramReplyeeInfo, paramString);
    Account localAccount;
    do
    {
      return;
      g(paramString);
      localAccount = am_CommonUtils.1this);
    }
    while (localAccount == null);
    if (paramString.length() > 512)
    {
      e.a(this, 2131034305);
      return;
    }
    cH localcH = new cH(this, this, 2131034430);
    String[] arrayOfString = new String[4];
    arrayOfString[0] = localAccount.getToken();
    arrayOfString[1] = this.a;
    arrayOfString[2] = paramReplyeeInfo.getCommentId();
    arrayOfString[3] = paramString;
    localcH.b(arrayOfString);
  }

  public final void a(String paramString)
  {
    new N(this).b(this.m.get_id(), paramString);
  }

  protected final void b()
  {
    i();
    if (!this.n)
    {
      cE localcE = new cE(this, (byte)0);
      String[] arrayOfString1 = new String[1];
      arrayOfString1[0] = this.a;
      localcE.b(arrayOfString1);
      return;
    }
    cG localcG = new cG(this, (byte)0);
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = this.a;
    localcG.b(arrayOfString2);
  }

  public final void e(int paramInt)
  {
    int i1 = 1;
    if (this.m == null);
    while (true)
    {
      return;
      if (paramInt == i1)
      {
        a(null);
        return;
      }
      if (paramInt == 0)
      {
        Account localAccount = am_CommonUtils.e();
        if (localAccount == null)
        {
          e.a(this, "请登录后再操作");
          startActivity(AuthLoginActivity.a(this));
          i1 = 0;
        }
        while (i1 != 0)
        {
          new N(this).a(this.l.getToken(), this.m.get_id());
          return;
          this.l = localAccount;
        }
      }
    }
  }

  public final void f()
  {
    super.f();
    this.j.setVisibility(0);
  }

  public final void f(int paramInt)
  {
    if (this.m == null)
    {
      e.a(this, "操作失败，请重试");
      return;
    }
    String str1 = this.m.getBook().getTitle();
    String str2 = this.m.getBook().getFullCover();
    T.a(this, str1, str1 + "的书评：「" + this.m.getTitle() + "」， 楼主你写的这么赞，你的小伙伴知道吗？", this.m.getShareLink(), str2, paramInt, new cC(this));
  }

  public final void h()
  {
    super.h();
    this.j.setVisibility(8);
  }

  public final void i()
  {
    super.i();
    this.j.setVisibility(8);
  }

  @TargetApi(11)
  protected final void o()
  {
    List localList = this.h;
    PostComment localPostComment1 = null;
    if (localList != null)
    {
      int i1 = this.h.size();
      localPostComment1 = null;
      if (i1 > 0)
        localPostComment1 = (PostComment)this.h.get(0);
    }
    User localUser = am_CommonUtils.e().getUser();
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
      this.h.add(0, localPostComment2);
      this.g.a(this.h);
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
    b("书评详情");
    String str = getIntent().getStringExtra("EXTRA_TYPE_NAME");
    if (!TextUtils.isEmpty(str))
      this.n = str.equals("BOOK_COMMENT");
    this.a = getIntent().getStringExtra("extraReviewId");
    this.b = ((ScrollLoadListView)findViewById(2131493135));
    this.j = findViewById(2131493838);
    a(true);
    this.c = new PostHeader(this);
    this.c.findViewById(2131493348).setVisibility(0);
    this.c.findViewById(2131493352).setVisibility(0);
    this.c.findViewById(2131493840).setVisibility(8);
    if (this.n)
    {
      this.c.findViewById(2131493352).setVisibility(8);
      this.c.a(false);
    }
    this.b.addHeaderView(this.c, null, false);
    HotCommentView localHotCommentView = (HotCommentView)LayoutInflater.from(this).inflate(2130903235, this.b, false);
    this.k = ((TextView)localHotCommentView.findViewById(2131493519));
    this.b.addHeaderView(localHotCommentView, null, false);
    localHotCommentView.a(this.a);
    this.f = LayoutInflater.from(this).inflate(2130903325, null);
    this.b.addFooterView(this.f);
    this.f.setVisibility(8);
    this.g = new z(getLayoutInflater());
    this.b.setAdapter(this.g);
    this.o = ((SendView)findViewById(2131494003));
    j();
    b();
    this.p = a.r(this, "community_user_gender_icon_toggle");
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ReviewActivity
 * JD-Core Version:    0.6.2
 */