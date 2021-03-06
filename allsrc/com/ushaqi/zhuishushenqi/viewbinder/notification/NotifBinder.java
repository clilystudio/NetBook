package com.ushaqi.zhuishushenqi.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.model.NotificationItem;
import com.ushaqi.zhuishushenqi.model.NotificationItem.NotifPost;
import com.ushaqi.zhuishushenqi.model.NotificationItem.Trigger;
import com.ushaqi.zhuishushenqi.ui.SmartImageView;
import com.ushaqi.zhuishushenqi.ui.post.BookHelpActivity;
import com.ushaqi.zhuishushenqi.ui.post.PostDetailActivity;
import com.ushaqi.zhuishushenqi.ui.post.ReviewActivity;

public abstract class NotifBinder
{
  protected NotificationItem mItem;

  public NotifBinder(NotificationItem paramNotificationItem)
  {
    this.mItem = paramNotificationItem;
  }

  public void fillIcon(TextView paramTextView)
  {
    paramTextView.setCompoundDrawablesWithIntrinsicBounds(getIconRes(), 0, 0, 0);
  }

  public void fillImageView(SmartImageView paramSmartImageView)
  {
    paramSmartImageView.setApiImageUrl(this.mItem.getTrigger().getAvatar(), 2130837614);
  }

  protected abstract int getIconRes();

  public abstract Intent getIntent(Context paramContext);

  public NotificationItem getItem()
  {
    return this.mItem;
  }

  public abstract String getLabel();

  public abstract String getMainText();

  protected int getPostIcon()
  {
    if (getItem().getPost() != null);
    for (NotificationItem.NotifPost localNotifPost = getItem().getPost(); "vote".equals(localNotifPost.getType()); localNotifPost = getItem().getMyPost())
      return 2130837917;
    return 2130837916;
  }

  protected Intent getPostIntent(Context paramContext, NotificationItem.NotifPost paramNotifPost)
  {
    String str = paramNotifPost.getType();
    if (str.equals("review"))
    {
      Intent localIntent1 = new Intent(paramContext, ReviewActivity.class);
      localIntent1.putExtra("extraReviewId", paramNotifPost.get_id());
      return localIntent1;
    }
    if (str.equals("help"))
    {
      Intent localIntent2 = new Intent(paramContext, BookHelpActivity.class);
      localIntent2.putExtra("extraBookHelpId", paramNotifPost.get_id());
      return localIntent2;
    }
    Intent localIntent3 = new Intent(paramContext, PostDetailActivity.class);
    localIntent3.putExtra("PostBookId", paramNotifPost.get_id());
    return localIntent3;
  }

  public abstract String getSubText();

  protected Intent getWebIntent(String paramString)
  {
    return new Intent("android.intent.action.VIEW", Uri.parse(paramString));
  }

  public void setItem(NotificationItem paramNotificationItem)
  {
    this.mItem = paramNotificationItem;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.viewbinder.notification.NotifBinder
 * JD-Core Version:    0.6.0
 */