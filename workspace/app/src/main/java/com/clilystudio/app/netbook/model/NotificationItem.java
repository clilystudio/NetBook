package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.util.t;
import java.util.Date;

public class NotificationItem
{
  public static final String COMMENT_LIKE = "comment_like";
  public static final String COMMENT_REPLY = "comment_reply";
  public static final String COMMENT_TWEET = "comment_tweet";
  public static final String FOLLOW = "follow";
  public static final String LINK_PUSH = "link_push";
  public static final String POST_DISTILLATE = "post_distillate";
  public static final String POST_HOT = "post_hot";
  public static final String POST_LIKE = "post_like";
  public static final String POST_PUSH = "post_push";
  public static final String POST_REPLY = "post_reply";
  public static final String POST_VOTE = "post_vote";
  public static final String REPLY_COMMENT = "reply_comment";
  public static final String RETWEET = "retweet";
  public static final String UNKNOWN = "unknown";
  private String _id;
  private NotificationRoot.NotifComment comment;
  private String created;
  private String header;
  private String jumpTo;
  private String link;
  private String linkTitle;
  private NotificationRoot.NotifComment myComment;
  private NotificationItem.NotifPost myPost;
  private NotificationItem.NotifPost post;
  private String subTitle;
  private String title;
  private NotificationItem.Trigger trigger;
  private String type = "post_reply";
  private String user;

  public NotificationItem()
  {
  }

  public NotificationItem(String paramString)
  {
    this.type = paramString;
  }

  public ReplyeeInfo buildRepliedInfoForCommentReply()
  {
    if (!this.type.equals("comment_reply"))
      throw new RuntimeException("Type must be comment_reply");
    CommonReplyeeInfo localCommonReplyeeInfo = new CommonReplyeeInfo();
    localCommonReplyeeInfo.setFloor(getComment().getFloor());
    localCommonReplyeeInfo.setAuthor(getTrigger().toAuthor());
    localCommonReplyeeInfo.setCommentId(getComment().get_id());
    return localCommonReplyeeInfo;
  }

  public ReplyeeInfo buildRepliedInfoForPostReply()
  {
    if (!this.type.equals("post_reply"))
      throw new RuntimeException("Type must be post_reply");
    CommonReplyeeInfo localCommonReplyeeInfo = new CommonReplyeeInfo();
    localCommonReplyeeInfo.setFloor(getComment().getFloor());
    localCommonReplyeeInfo.setAuthor(getTrigger().toAuthor());
    localCommonReplyeeInfo.setCommentId(getComment().get_id());
    return localCommonReplyeeInfo;
  }

  public NotificationRoot.NotifComment getComment()
  {
    return this.comment;
  }

  public String getCreated()
  {
    return this.created;
  }

  public String getHeader()
  {
    return this.header;
  }

  public String getJumpTo()
  {
    return this.jumpTo;
  }

  public String getLink()
  {
    return this.link;
  }

  public String getLinkTitle()
  {
    return this.linkTitle;
  }

  public NotificationRoot.NotifComment getMyComment()
  {
    return this.myComment;
  }

  public NotificationItem.NotifPost getMyPost()
  {
    return this.myPost;
  }

  public NotificationItem.NotifPost getPost()
  {
    return this.post;
  }

  public Date getServerDate()
  {
    return t.b(getCreated());
  }

  public String getSubTitle()
  {
    return this.subTitle;
  }

  public String getTitle()
  {
    return this.title;
  }

  public NotificationItem.Trigger getTrigger()
  {
    return this.trigger;
  }

  public String getType()
  {
    return this.type;
  }

  public String getUser()
  {
    return this.user;
  }

  public String get_id()
  {
    return this._id;
  }

  public boolean isPush()
  {
    return getTrigger() == null;
  }

  public boolean isPushPost()
  {
    return (isPush()) && (getPost() != null);
  }

  public boolean isType(String paramString)
  {
    return paramString.equals(this.type);
  }

  public void setComment(NotificationRoot.NotifComment paramNotifComment)
  {
    this.comment = paramNotifComment;
  }

  public void setCreated(String paramString)
  {
    this.created = paramString;
  }

  public void setHeader(String paramString)
  {
    this.header = paramString;
  }

  public void setJumpTo(String paramString)
  {
    this.jumpTo = paramString;
  }

  public void setLink(String paramString)
  {
    this.link = paramString;
  }

  public void setLinkTitle(String paramString)
  {
    this.linkTitle = paramString;
  }

  public void setMyComment(NotificationRoot.NotifComment paramNotifComment)
  {
    this.myComment = paramNotifComment;
  }

  public void setMyPost(NotificationItem.NotifPost paramNotifPost)
  {
    this.myPost = paramNotifPost;
  }

  public void setPost(NotificationItem.NotifPost paramNotifPost)
  {
    this.post = paramNotifPost;
  }

  public void setSubTitle(String paramString)
  {
    this.subTitle = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setTrigger(NotificationItem.Trigger paramTrigger)
  {
    this.trigger = paramTrigger;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }

  public void setUser(String paramString)
  {
    this.user = paramString;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.NotificationItem
 * JD-Core Version:    0.6.2
 */