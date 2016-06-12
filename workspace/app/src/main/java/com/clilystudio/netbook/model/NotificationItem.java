package com.clilystudio.netbook.model;

import com.clilystudio.netbook.util.t;

import java.util.Date;

public class NotificationItem {

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
    private NotificationRoot$NotifComment comment;
    private String created;
    private String header;
    private String jumpTo;
    private String link;
    private String linkTitle;
    private NotificationRoot$NotifComment myComment;
    private NotificationItem$NotifPost myPost;
    private NotificationItem$NotifPost post;
    private String subTitle;
    private String title;
    private NotificationItem$Trigger trigger;
    private String type;
    private String user;
    public NotificationItem(String String1) {
        type = "post_reply";
        type = String1;
    }

    public NotificationItem() {
        type = "post_reply";
    }

    public ReplyeeInfo buildRepliedInfoForCommentReply() {
        if (!type.equals("comment_reply"))
            throw new RuntimeException("Type must be comment_reply");
        else {
            Object Object1 = new CommonReplyeeInfo();

            ((ReplyeeInfo) Object1).setFloor(getComment().getFloor());
            ((ReplyeeInfo) Object1).setAuthor(getTrigger().toAuthor());
            ((ReplyeeInfo) Object1).setCommentId(getComment().get_id());
            return (ReplyeeInfo) Object1;
        }
    }

    public ReplyeeInfo buildRepliedInfoForPostReply() {
        if (!type.equals("post_reply"))
            throw new RuntimeException("Type must be post_reply");
        else {
            Object Object1 = new CommonReplyeeInfo();

            ((ReplyeeInfo) Object1).setFloor(getComment().getFloor());
            ((ReplyeeInfo) Object1).setAuthor(getTrigger().toAuthor());
            ((ReplyeeInfo) Object1).setCommentId(getComment().get_id());
            return (ReplyeeInfo) Object1;
        }
    }

    public NotificationRoot$NotifComment getComment() {
        return comment;
    }

    public void setComment(NotificationRoot$NotifComment NotifComment1) {
        comment = NotifComment1;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String String1) {
        created = String1;
    }

    public String getHeader() {
        return header;
    }

    public void setHeader(String String1) {
        header = String1;
    }

    public String getJumpTo() {
        return jumpTo;
    }

    public void setJumpTo(String String1) {
        jumpTo = String1;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String String1) {
        link = String1;
    }

    public String getLinkTitle() {
        return linkTitle;
    }

    public void setLinkTitle(String String1) {
        linkTitle = String1;
    }

    public NotificationRoot$NotifComment getMyComment() {
        return myComment;
    }

    public void setMyComment(NotificationRoot$NotifComment NotifComment1) {
        myComment = NotifComment1;
    }

    public NotificationItem$NotifPost getMyPost() {
        return myPost;
    }

    public void setMyPost(NotificationItem$NotifPost NotifPost1) {
        myPost = NotifPost1;
    }

    public NotificationItem$NotifPost getPost() {
        return post;
    }

    public void setPost(NotificationItem$NotifPost NotifPost1) {
        post = NotifPost1;
    }

    public Date getServerDate() {
        return t.b(getCreated());
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String String1) {
        subTitle = String1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public NotificationItem$Trigger getTrigger() {
        return trigger;
    }

    public void setTrigger(NotificationItem$Trigger Trigger1) {
        trigger = Trigger1;
    }

    public String getType() {
        return type;
    }

    public void setType(String String1) {
        type = String1;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String String1) {
        user = String1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }

    public boolean isPush() {
        if (getTrigger() == null)
            return true;
        else
            return false;
    }

    public boolean isPushPost() {
        if (isPush() && getPost() != null)
            return true;
        else
            return false;
    }

    public boolean isType(String String1) {
        return String1.equals(type);
    }
}
