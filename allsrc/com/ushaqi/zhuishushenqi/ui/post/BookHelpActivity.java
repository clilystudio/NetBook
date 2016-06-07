package com.ushaqi.zhuishushenqi.ui.post;

import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.adapter.z;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.Author;
import com.ushaqi.zhuishushenqi.model.BookHelp;
import com.ushaqi.zhuishushenqi.model.PostComment;
import com.ushaqi.zhuishushenqi.model.PostComment.PostCommentReply;
import com.ushaqi.zhuishushenqi.model.ReplyeeInfo;
import com.ushaqi.zhuishushenqi.model.User;
import com.ushaqi.zhuishushenqi.ui.user.AuthLoginActivity;
import com.ushaqi.zhuishushenqi.util.N;
import com.ushaqi.zhuishushenqi.util.T;
import com.ushaqi.zhuishushenqi.util.e;
import com.ushaqi.zhuishushenqi.widget.HotCommentView;
import com.ushaqi.zhuishushenqi.widget.PostHeader;
import com.ushaqi.zhuishushenqi.widget.ScrollLoadListView;
import com.ushaqi.zhuishushenqi.widget.av;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BookHelpActivity extends AbsPostActivity
{
  private View f;
  private z g;
  private List<PostComment> h = new ArrayList();
  private ad i;
  private TextView j;
  private View k;
  private Account l;
  private BookHelp m;
  private boolean n = false;
  private av o = new ab(this);

  public final void a(String paramString)
  {
    new N(this).b(this.m.get_id(), paramString);
  }

  protected final void b()
  {
    i();
    ae localae = new ae(this, 0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.a;
    localae.b(arrayOfString);
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
      if (paramInt != 0)
        continue;
      Account localAccount = am.e();
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

  public final void f()
  {
    super.f();
    this.k.setVisibility(0);
  }

  public final void f(int paramInt)
  {
    if (this.m == null)
    {
      e.a(this, "操作失败，请重试");
      return;
    }
    T.a(this, this.m.getTitle(), "「" + this.m.getTitle() + "」   我在这发现了好多好看的小说，你也来找找看吧", this.m.getShareLink(), null, paramInt, new ac(this));
  }

  public final void h()
  {
    super.h();
    this.k.setVisibility(8);
  }

  public final void i()
  {
    super.i();
    this.k.setVisibility(8);
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
    b("书荒互助区详情");
    this.a = getIntent().getStringExtra("extraBookHelpId");
    this.b = ((ScrollLoadListView)findViewById(2131493135));
    this.k = findViewById(2131493838);
    a(true);
    this.c = new PostHeader(this);
    this.b.addHeaderView(this.c, null, false);
    HotCommentView localHotCommentView = (HotCommentView)LayoutInflater.from(this).inflate(2130903235, this.b, false);
    this.j = ((TextView)localHotCommentView.findViewById(2131493519));
    this.b.addHeaderView(localHotCommentView, null, false);
    localHotCommentView.a(this.a);
    this.f = LayoutInflater.from(this).inflate(2130903325, null);
    this.b.addFooterView(this.f);
    this.f.setVisibility(8);
    this.g = new z(getLayoutInflater());
    this.b.setAdapter(this.g);
    j();
    b();
    this.n = a.r(this, "community_user_gender_icon_toggle");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.BookHelpActivity
 * JD-Core Version:    0.6.0
 */