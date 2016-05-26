package com.clilystudio.app.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.db.FollowRecord;
import com.clilystudio.app.netbook.db.RetweenRecord;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.Book;
import com.clilystudio.app.netbook.model.Tweet;
import com.clilystudio.app.netbook.model.User;
import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.ui.post.OtherUserActivity;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.util.t;
import com.clilystudio.app.netbook.widget.CoverView;
import com.clilystudio.app.netbook.widget.PostFlag;
import com.clilystudio.app.netbook.widget.RatingView;

public class G extends u
{
  private Context a;
  private boolean b;
  private boolean c;
  private View d;
  private Tweet e;
  private boolean f = false;

  static
  {
    G.class.getSimpleName();
  }

  public G(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = paramActivity;
    this.c = paramBoolean1;
    this.b = paramBoolean2;
    TypedArray localTypedArray = this.a.getTheme().obtainStyledAttributes(new int[] { 2130772004, 2130772003 });
    localTypedArray.getResourceId(0, 2130838193);
    localTypedArray.getResourceId(1, 2130838191);
    localTypedArray.recycle();
    this.f = a.r(this.a, "community_user_gender_icon_toggle");
  }

  private int a(Tweet paramTweet)
  {
    while (true)
    {
      String str = paramTweet.getType();
      int i = -1;
      switch (str.hashCode())
      {
      default:
      case 80236113:
      case 1816505342:
      case -1881019560:
      case -14395178:
      }
      while (true)
        switch (i)
        {
        case 0:
        default:
          return 0;
          if (str.equals("TWEET"))
          {
            i = 0;
            continue;
            if (str.equals("RETWEET"))
            {
              i = 1;
              continue;
              if (str.equals("REVIEW"))
              {
                i = 2;
                continue;
                if (str.equals("ARTICLE"))
                  i = 3;
              }
            }
          }
          break;
        case 1:
        case 2:
        case 3:
        }
      paramTweet = paramTweet.getRefTweet();
    }
    return 1;
    return 2;
  }

  private View a(View paramView, int paramInt1, ViewGroup paramViewGroup, int paramInt2)
  {
    if (paramView == null);
    switch (paramInt1)
    {
    default:
      return paramView;
    case 0:
      View localView3 = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903313, paramViewGroup, false);
      localView3.setTag(new R(this, localView3));
      return localView3;
    case 1:
      View localView2 = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903315, paramViewGroup, false);
      localView2.findViewById(2131493348).setVisibility(0);
      localView2.setTag(new R(this, localView2));
      return localView2;
    case 2:
      View localView1 = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903314, paramViewGroup, false);
      localView1.setTag(new R(this, localView1));
      return localView1;
    case 3:
    }
    return a(paramView, a(((Tweet)getItem(paramInt2)).getRefTweet()), paramViewGroup, paramInt2);
  }

  private void a(int paramInt, View paramView, Tweet paramTweet)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      paramView.setOnClickListener(new H(this, paramTweet));
      return;
    case 2:
      paramView.setOnClickListener(new I(this, paramTweet));
      return;
    case 1:
    }
    paramView.setOnClickListener(new J(this, paramTweet));
  }

  private static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ((View)paramView.getParent()).post(new Q(paramView, 15, 15, 15, 15));
  }

  private void a(R paramR)
  {
    paramR.h.setText("已关注");
    paramR.h.setTextColor(-5822976);
    paramR.h.setTextSize(10.0F);
    Drawable localDrawable = this.a.getResources().getDrawable(2130837887);
    localDrawable.setBounds(0, 0, 9 * localDrawable.getMinimumWidth() / 16, 9 * localDrawable.getMinimumHeight() / 16);
    paramR.h.setCompoundDrawables(localDrawable, null, null, null);
  }

  private void a(R paramR, Tweet paramTweet, User paramUser, boolean paramBoolean)
  {
    a(paramR.h, 15, 15, 15, 15);
    paramR.h.setVisibility(0);
    if (paramBoolean)
    {
      paramR.h.setOnClickListener(new N(this, paramR, paramTweet));
      paramR.h.setText("删除");
      Drawable localDrawable = paramR.h.getResources().getDrawable(2130837942);
      localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
      paramR.h.setCompoundDrawables(localDrawable, null, null, null);
      paramR.h.setTextColor(-5592406);
      return;
    }
    if (this.b)
    {
      Account localAccount = am_CommonUtils.e();
      if (localAccount != null)
      {
        if (!a(localAccount, paramUser))
          break label159;
        a(paramR);
      }
      while (true)
      {
        paramR.h.setOnClickListener(new M(this, paramR, paramUser));
        return;
        label159: b(paramR);
      }
    }
    paramR.h.setVisibility(4);
  }

  private void a(Tweet paramTweet, R paramR)
  {
    User localUser;
    if (paramTweet.isRetween())
    {
      localUser = paramTweet.getFrom();
      if ((this.b) || ((!paramTweet.isHot()) && ((!paramTweet.isRetween()) || (!paramTweet.getRefTweet().isHot()))))
        break label181;
      paramR.k.setVisibility(0);
      paramR.k.a("hot");
      paramR.e.setVisibility(8);
    }
    label71: View localView;
    while (true)
      if (paramTweet.isRetween())
      {
        paramR.l.setVisibility(0);
        String str4 = paramTweet.getUser().getNickname();
        if ((paramTweet.getNames() != null) && (paramTweet.names.length > 0))
        {
          String str5 = "";
          int j = 0;
          while (true)
            if ((j < 3) && (j < paramTweet.getNames().length))
            {
              str5 = str5 + paramTweet.getNames()[j] + " , ";
              j++;
              continue;
              localUser = paramTweet.getUser();
              break;
              label181: paramR.k.setVisibility(8);
              paramR.e.setVisibility(0);
              break label71;
            }
          str4 = str5.substring(0, -2 + str5.length());
          if (paramTweet.getNames().length > 3)
            str4 = str4 + " 等" + paramTweet.getNames().length + "人";
        }
        paramR.l.setText(" " + str4 + " 转发了这条动态");
        paramR.e.setText(t.e(paramTweet.getCreated()));
        paramTweet.getRefTweet().setUser(paramTweet.getFrom());
        paramTweet = paramTweet.getRefTweet();
        paramR.a.setImageUrl(localUser.getFullAvatar());
        if (a(paramTweet) != 0)
          paramR.i.setText(paramTweet.getTitle());
        paramR.b.setText(localUser.getNickname());
        paramR.c.setText(paramTweet.getContent());
        paramR.d.setText("lv." + localUser.getLv());
        String str1 = paramTweet.getCommented();
        String str2 = paramTweet.getRetweeted();
        if ((paramTweet.getVotes() != null) && (paramTweet.getVotes().length != 0))
          break label779;
        if (paramTweet.getCommented() > 9999)
          str1 = a.i(paramTweet.getCommented());
        if (paramTweet.getRetweeted() > 9999)
          str2 = a.i(paramTweet.getRetweeted());
        Drawable localDrawable1 = this.a.getResources().getDrawable(2130837902);
        localDrawable1.setBounds(0, 0, localDrawable1.getMinimumWidth(), localDrawable1.getMinimumHeight());
        paramR.f.setCompoundDrawables(localDrawable1, null, null, null);
        TextView localTextView1 = paramR.f;
        if (paramTweet.getCommented() == 0)
          str1 = "评论";
        localTextView1.setText(str1);
        TextView localTextView2 = paramR.g;
        if (paramTweet.getRetweeted() == 0)
          str2 = "转发";
        localTextView2.setText(str2);
        Intent localIntent = OtherUserActivity.a(this.a);
        localIntent.putExtra("USER_ID", paramTweet.getUser().getId());
        localIntent.putExtra("USER_NAME", paramTweet.getUser().getNickname());
        paramR.a.setOnClickListener(new K(this, localIntent));
        if ((paramTweet != null) && (1 == a(paramTweet)))
        {
          paramR.m.setText(paramTweet.getBook().getTitle());
          paramR.n.setValue(paramTweet.getScore());
          paramR.o.setImageUrl(paramTweet.getBook().getCover());
          localView = paramR.j;
          if (paramTweet.getBook() != null)
            break label873;
        }
      }
    label779: label873: for (int i = 8; ; i = 0)
    {
      localView.setVisibility(i);
      if (!this.f)
        break label921;
      if (localUser.getGenderFlag() != 0)
        break label879;
      paramR.p.setImageLevel(2);
      paramR.p.setVisibility(0);
      return;
      paramR.l.setVisibility(8);
      paramR.e.setText(t.e(paramTweet.getCreated()));
      break;
      Drawable localDrawable2 = this.a.getResources().getDrawable(2130837971);
      localDrawable2.setBounds(0, 0, localDrawable2.getMinimumWidth(), localDrawable2.getMinimumHeight());
      paramR.f.setCompoundDrawables(localDrawable2, null, null, null);
      TextView localTextView3 = paramR.f;
      if (paramTweet.getVoteCount() == 0);
      for (String str3 = "评论"; ; str3 = paramTweet.getVoteCount())
      {
        localTextView3.setText(str3);
        break;
      }
    }
    label879: if (localUser.getGenderFlag() == 1)
    {
      paramR.p.setImageLevel(3);
      paramR.p.setVisibility(0);
      return;
    }
    paramR.p.setImageLevel(4);
    paramR.p.setVisibility(0);
    return;
    label921: if (localUser.isOfficial())
    {
      paramR.p.setImageLevel(0);
      paramR.p.setVisibility(0);
      return;
    }
    if (localUser.isDoyan())
    {
      paramR.p.setImageLevel(1);
      paramR.p.setVisibility(0);
      return;
    }
    paramR.p.setVisibility(8);
  }

  public static boolean a(Account paramAccount, Tweet paramTweet)
  {
    if (a(paramTweet, paramAccount));
    do
    {
      return false;
      if (paramTweet.isRetween())
        paramTweet = paramTweet.getRefTweet();
    }
    while (a(paramAccount, paramTweet.get_id()));
    return true;
  }

  private static boolean a(Account paramAccount, User paramUser)
  {
    return FollowRecord.isFollowed(paramAccount.getUser().getId(), paramUser.getId());
  }

  public static boolean a(Account paramAccount, String paramString)
  {
    return RetweenRecord.isRetweened(paramAccount.getUser().getId(), paramString);
  }

  public static boolean a(Tweet paramTweet, Account paramAccount)
  {
    return paramTweet.getUser().getId().equals(paramAccount.getUser().getId());
  }

  private void b(R paramR)
  {
    paramR.h.setText("关注");
    paramR.h.setTextColor(this.a.getResources().getColor(2131427543));
    Drawable localDrawable = this.a.getResources().getDrawable(2130837803);
    localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
    paramR.h.setTextSize(10.0F);
    paramR.h.setCompoundDrawables(localDrawable, null, null, null);
  }

  public int getItemViewType(int paramInt)
  {
    return a((Tweet)getItem(paramInt));
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = getItemViewType(paramInt);
    View localView = a(paramView, i, paramViewGroup, paramInt);
    Tweet localTweet = (Tweet)getItem(paramInt);
    R localR = (R)localView.getTag();
    switch (i)
    {
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    }
    while (this.c)
    {
      a(localR, localTweet, null, true);
      return localView;
      a(localTweet, localR);
      a(i, localView, localTweet);
      continue;
      localR.i.setText(localTweet.getTitle());
      a(i, localView, localTweet);
      a(localTweet, localR);
      continue;
      localR.i.setText(localTweet.getTitle());
      a(localTweet, localR);
      a(i, localView, localTweet);
      continue;
      a(localTweet, localR);
      a(a(localTweet), localView, localTweet.getRefTweet());
    }
    a(localR, localTweet, localTweet.getUser(), false);
    a(localR.g, 15, 15, 15, 15);
    localR.g.setOnClickListener(new L(this, localTweet, localR));
    return localView;
  }

  public int getViewTypeCount()
  {
    return 3;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.G
 * JD-Core Version:    0.6.2
 */