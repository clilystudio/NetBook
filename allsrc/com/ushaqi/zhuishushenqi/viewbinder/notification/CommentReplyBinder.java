package com.ushaqi.zhuishushenqi.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.ushaqi.zhuishushenqi.model.NotificationItem;
import com.ushaqi.zhuishushenqi.model.NotificationItem.Trigger;
import com.ushaqi.zhuishushenqi.model.NotificationRoot.NotifComment;

public class CommentReplyBinder extends NotifBinder
{
  public static final String LABEL = "comment_reply";

  public CommentReplyBinder(NotificationItem paramNotificationItem)
  {
    super(paramNotificationItem);
  }

  protected int getIconRes()
  {
    return 2130837914;
  }

  public Intent getIntent(Context paramContext)
  {
    Intent localIntent = getPostIntent(paramContext, getItem().getPost());
    localIntent.putExtra("KEY_POST_REPLIER_INFO", getItem().buildRepliedInfoForCommentReply());
    return localIntent;
  }

  public String getLabel()
  {
    return "comment_reply";
  }

  public String getMainText()
  {
    NotificationItem localNotificationItem = getItem();
    return localNotificationItem.getTrigger().getNickname() + "：" + localNotificationItem.getComment().getContent();
  }

  public String getSubText()
  {
    return getItem().getMyComment().getContent();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.viewbinder.notification.CommentReplyBinder
 * JD-Core Version:    0.6.0
 */