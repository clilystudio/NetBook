package com.ushaqi.zhuishushenqi.ui.post;

import android.annotation.TargetApi;
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
import com.ushaqi.zhuishushenqi.adapter.z;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.Author;
import com.ushaqi.zhuishushenqi.model.GirlTopic;
import com.ushaqi.zhuishushenqi.model.PostComment;
import com.ushaqi.zhuishushenqi.model.PostComment.PostCommentReply;
import com.ushaqi.zhuishushenqi.model.ReplyeeInfo;
import com.ushaqi.zhuishushenqi.model.User;
import com.ushaqi.zhuishushenqi.model.Vote;
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

public class GirlTopicActivity extends AbsPostActivity
{
  private View f;
  private z g;
  private List<PostComment> h = new ArrayList();
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
  private View.OnClickListener v = new bm(this);
  private av w = new bo(this);

  private void a(int paramInt, boolean paramBoolean)
  {
    int i1 = this.m.getVoteCount();
    if (!paramBoolean)
      i1++;
    this.s.setText("共" + i1 + "人投票");
    Vote[] arrayOfVote = this.m.getVotes();
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
      this.o[i4].setEnabled(false);
      this.n[i4].setVisibility(0);
      if (i4 == paramInt)
      {
        this.o[i4].setImageResource(2130838056);
        label178: if ((i1 == 0) || (i4 >= i2))
          break label323;
        arrayOfInt[i4] /= i1;
      }
      while (true)
      {
        String str = String.valueOf((int)(0.5F + 100.0F * arrayOfFloat[i4]));
        this.q[i4].setText(arrayOfInt[i4] + " 票");
        this.r[i4].setText(str + "%");
        this.p[i4].setProgress((int)(100.0F * arrayOfFloat[i4]));
        i4++;
        break;
        this.o[i4].setImageResource(2130838055);
        break label178;
        label323: arrayOfFloat[i4] = 0.0F;
      }
    }
  }

  private boolean p()
  {
    Account localAccount = am.e();
    if (localAccount == null)
    {
      e.a(this, "请登录后再操作");
      startActivity(AuthLoginActivity.a(this));
      return false;
    }
    this.l = localAccount;
    return true;
  }

  public final void a(String paramString)
  {
    new N(this).b(this.m.get_id(), paramString);
  }

  protected final void b()
  {
    i();
    br localbr = new br(this, 0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.a;
    localbr.b(arrayOfString);
  }

  public final void e(int paramInt)
  {
    if (this.m == null);
    do
    {
      return;
      if (paramInt != 1)
        continue;
      a(null);
      return;
    }
    while ((paramInt != 0) || (!p()));
    new N(this).a(this.l.getToken(), this.m.get_id());
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
    T.a(this, this.m.getTitle(), "「" + this.m.getTitle() + "」   我在这发现了好多好看的小说，你也来找找看吧", this.m.getShareLink(), null, paramInt, new bp(this));
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
    b("女生区话题详情");
    this.a = getIntent().getStringExtra("extraGirlTopicId");
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
    this.u = a.r(this, "community_user_gender_icon_toggle");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.GirlTopicActivity
 * JD-Core Version:    0.6.0
 */