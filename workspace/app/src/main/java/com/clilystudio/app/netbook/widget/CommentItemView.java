package com.clilystudio.app.netbook.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.Author;
import com.clilystudio.app.netbook.model.PostComment;
import com.clilystudio.app.netbook.model.PostComment.PostCommentReply;
import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.ui.post.AbsPostActivity;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.app.netbook.util.e;
import com.clilystudio.app.netbook.util.t;
import uk.me.lewisdeane.ldialogs.h;

public class CommentItemView extends HorizontalScrollView
  implements View.OnClickListener
{
  private int a;
  private boolean b = true;
  private boolean c = false;
  private AbsPostActivity d;
  private ViewGroup e;
  private TextView f;
  private b g = b.a();
  private PostComment h;
  private int i;

  public CommentItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (!isInEditMode())
    {
      if (!(paramContext instanceof AbsPostActivity))
        throw new RuntimeException("Must be used in TopicDetailActivity");
      this.d = ((AbsPostActivity)paramContext);
      setHorizontalScrollBarEnabled(false);
      this.a = this.d.getWindowManager().getDefaultDisplay().getWidth();
    }
  }

  private static void a(View paramView, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int j = 8; ; j = 0)
    {
      paramView.setVisibility(j);
      return;
    }
  }

  private void a(TextView paramTextView, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramInt == 0);
    for (Object localObject = ""; ; localObject = Integer.valueOf(paramInt))
    {
      paramTextView.setText(localObject + " 同感");
      return;
    }
  }

  private void a(boolean paramBoolean)
  {
    boolean bool = true;
    int j = this.e.getWidth();
    int m;
    int k;
    if (this.b)
    {
      m = -j;
      k = 0;
      if (!paramBoolean)
        break label66;
      smoothScrollTo(k - m, 0);
      if (this.b)
        break label61;
    }
    while (true)
    {
      this.b = bool;
      return;
      k = -j;
      m = 0;
      break;
      label61: bool = false;
    }
    label66: scrollTo(k - m, 0);
    if (!this.b);
    while (true)
    {
      this.b = bool;
      return;
      bool = false;
    }
  }

  private void c()
  {
    this.f.setCompoundDrawablesWithIntrinsicBounds(0, 2130837985, 0, 0);
    int j = 1 + d().getLikeCount();
    this.f.setTextColor(-2741204);
    a(this.f, j);
  }

  private PostComment d()
  {
    return (PostComment)findViewById(2131493761).getTag();
  }

  public final void a()
  {
    if (!this.b)
      a(true);
  }

  public final void a(PostComment paramPostComment, int paramInt)
  {
    this.h = paramPostComment;
    this.i = paramInt;
    SmartImageView localSmartImageView = (SmartImageView)findViewById(2131493761);
    TextView localTextView1 = (TextView)findViewById(2131493764);
    TextView localTextView2 = (TextView)findViewById(2131493765);
    TextView localTextView3 = (TextView)findViewById(2131493769);
    LinkifyTextView localLinkifyTextView = (LinkifyTextView)findViewById(2131493766);
    TextView localTextView4 = (TextView)findViewById(2131493763);
    TextView localTextView5 = (TextView)findViewById(2131493767);
    View localView1 = findViewById(2131493759);
    TextView localTextView6 = (TextView)findViewById(2131493772);
    ImageView localImageView = (ImageView)findViewById(2131493762);
    TextView localTextView7 = (TextView)findViewById(2131493432);
    View localView2 = findViewById(2131493773);
    label338: int j;
    label367: String str2;
    if (!am_CommonUtils.1getContext()))
    {
      localSmartImageView.setImageUrl(paramPostComment.getAuthor().getScaleAvatar(), 2130837614);
      localSmartImageView.setTag(paramPostComment);
      localTextView1.setText(paramPostComment.getAuthor().getNickname());
      localTextView2.setText("lv." + paramPostComment.getAuthor().getLv());
      localTextView3.setText(t.e(paramPostComment.getCreated()));
      localLinkifyTextView.setLinkifyText(paramPostComment.getContent(), paramPostComment.getAuthor().isOfficial());
      localTextView4.setText(paramPostComment.getFloor() + "楼");
      PostComment.PostCommentReply localPostCommentReply = paramPostComment.getReplyTo();
      if ((localPostCommentReply == null) || (localPostCommentReply.getAuthor() == null))
        break label442;
      Author localAuthor = localPostCommentReply.getAuthor();
      a(localTextView5, false);
      localTextView5.setText("回复 " + localAuthor.getNickname() + " (" + localPostCommentReply.getFloor() + "楼)");
      localView1.getLayoutParams().width = this.a;
      j = paramPostComment.getLikeCount();
      if (!paramPostComment.isLikedInView())
        break label451;
      c();
      if (!a.r(getContext(), "community_user_gender_icon_toggle"))
        break label491;
      str2 = paramPostComment.getAuthor().getGender();
      a(localImageView, false);
      if (!"male".equals(str2))
        break label462;
      localImageView.setImageLevel(2);
    }
    while (true)
    {
      if (paramPostComment.get_id() != null)
        break label561;
      a(localTextView7, true);
      a(localView2, true);
      return;
      localSmartImageView.setImageResource(2130837614);
      break;
      label442: a(localTextView5, true);
      break label338;
      label451: a(localTextView6, j);
      break label367;
      label462: if ("female".equals(str2))
      {
        localImageView.setImageLevel(3);
      }
      else
      {
        localImageView.setImageLevel(4);
        continue;
        label491: String str1 = paramPostComment.getAuthor().getType();
        if ("official".equals(str1))
        {
          a(localImageView, false);
          localImageView.setImageLevel(0);
        }
        else if ("doyen".equals(str1))
        {
          a(localImageView, false);
          localImageView.setImageLevel(1);
        }
        else
        {
          a(localImageView, true);
        }
      }
    }
    label561: a(localTextView7, false);
    a(localView2, false);
  }

  public final void b()
  {
    if (!this.b)
      a(false);
  }

  public final void b(PostComment paramPostComment, int paramInt)
  {
    a(paramPostComment, -1);
    TextView localTextView = (TextView)findViewById(2131493768);
    localTextView.setVisibility(0);
    localTextView.setText(paramPostComment.getLikeCount() + "次同感");
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131493760:
    case 2131493759:
    case 2131493766:
    case 2131493771:
    case 2131493772:
      Account localAccount;
      do
      {
        return;
        this.d.startActivity(e.a(paramView.getContext(), d().getAuthor()));
        return;
        ListView localListView = this.d.m();
        for (int j = 0; j < localListView.getChildCount(); j++)
        {
          View localView = localListView.getChildAt(j);
          if (((localView instanceof CommentItemView)) && (localView != this))
            ((CommentItemView)localView).a();
        }
        a(true);
        return;
        PostComment localPostComment2 = d();
        this.d.a(localPostComment2.toRepliedInfo(), this.d.m().getHeaderViewsCount() + this.i);
        return;
        localAccount = am_CommonUtils.e();
        if (localAccount == null)
        {
          e.a(this.d, "请登录后再操作");
          this.d.startActivity(AuthLoginActivity.a(this.d));
          localAccount = null;
        }
      }
      while (localAccount == null);
      n localn = new n(this, (byte)0);
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = d().get_id();
      arrayOfString2[1] = localAccount.getToken();
      localn.b(arrayOfString2);
      return;
    case 2131493432:
    }
    PostComment localPostComment1 = d();
    if (localPostComment1.getReplyTo() == null);
    for (String[] arrayOfString1 = { "举报" }; ; arrayOfString1 = new String[] { "查看回复的楼层", "举报" })
    {
      h localh = new h(this.d);
      localh.d = "更多";
      localh.a(arrayOfString1, new l(this, arrayOfString1, localPostComment1)).a().show();
      return;
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    findViewById(2131493760).setOnClickListener(this);
    findViewById(2131493759).setOnClickListener(this);
    this.e = ((ViewGroup)findViewById(2131493770));
    findViewById(2131493766).setOnClickListener(this);
    findViewById(2131493771).setOnClickListener(this);
    this.f = ((TextView)findViewById(2131493772));
    this.f.setOnClickListener(this);
    findViewById(2131493432).setOnClickListener(this);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
      return super.onTouchEvent(paramMotionEvent);
    case 0:
    }
    return false;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.CommentItemView
 * JD-Core Version:    0.6.2
 */