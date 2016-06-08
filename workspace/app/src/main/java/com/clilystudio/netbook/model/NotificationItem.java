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

    public NotificationItem() {
    }

    public NotificationItem(String paramString) {
        this.type = paramString;
    }

    public ReplyeeInfo buildRepliedInfoForCommentReply() {
        if (!this.type.equals("comment_reply"))
            throw new RuntimeException("Type must be comment_reply");
        CommonReplyeeInfo localCommonReplyeeInfo = new CommonReplyeeInfo();
        localCommonReplyeeInfo.setFloor(getComment().getFloor());
        localCommonReplyeeInfo.setAuthor(getTrigger().toAuthor());
        localCommonReplyeeInfo.setCommentId(getComment().get_id());
        return localCommonReplyeeInfo;
    }

    public ReplyeeInfo buildRepliedInfoForPostReply() {
        if (!this.type.equals("post_reply"))
            throw new RuntimeException("Type must be post_reply");
        CommonReplyeeInfo localCommonReplyeeInfo = new CommonReplyeeInfo();
        localCommonReplyeeInfo.setFloor(getComment().getFloor());
        localCommonReplyeeInfo.setAuthor(getTrigger().toAuthor());
        localCommonReplyeeInfo.setCommentId(getComment().get_id());
        return localCommonReplyeeInfo;
    }

    public NotificationRoot.NotifComment getComment() {
        return this.comment;
    }

    public void setComment(NotificationRoot.NotifComment paramNotifComment) {
        this.comment = paramNotifComment;
    }

    public String getCreated() {
        return this.created;
    }

    public void setCreated(String paramString) {
        this.created = paramString;
    }

    public String getHeader() {
        return this.header;
    }

    public void setHeader(String paramString) {
        this.header = paramString;
    }

    public String getJumpTo() {
        return this.jumpTo;
    }

    public void setJumpTo(String paramString) {
        this.jumpTo = paramString;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String paramString) {
        this.link = paramString;
    }

    public String getLinkTitle() {
        return this.linkTitle;
    }

    public void setLinkTitle(String paramString) {
        this.linkTitle = paramString;
    }

    public NotificationRoot.NotifComment getMyComment() {
        return this.myComment;
    }

    public void setMyComment(NotificationRoot.NotifComment paramNotifComment) {
        this.myComment = paramNotifComment;
    }

    public NotificationItem.NotifPost getMyPost() {
        return this.myPost;
    }

    public void setMyPost(NotificationItem.NotifPost paramNotifPost) {
        this.myPost = paramNotifPost;
    }

    public NotificationItem.NotifPost getPost() {
        return this.post;
    }

    public void setPost(NotificationItem.NotifPost paramNotifPost) {
        this.post = paramNotifPost;
    }

    public Date getServerDate() {
        return t.b(getCreated());
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public void setSubTitle(String paramString) {
        this.subTitle = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public NotificationItem.Trigger getTrigger() {
        return this.trigger;
    }

    public void setTrigger(NotificationItem.Trigger paramTrigger) {
        this.trigger = paramTrigger;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }

    public String getUser() {
        return this.user;
    }

    public void setUser(String paramString) {
        this.user = paramString;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }

    public boolean isPush() {
        return getTrigger() == null;
    }

    public boolean isPushPost() {
        return (isPush()) && (getPost() != null);
    }

    public boolean isType(String paramString) {
        return paramString.equals(this.type);
    }

    public class NotifPost {
        private String _id;
        private String title;
        private String type;

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String paramString) {
            this.title = paramString;
        }

        public String getType() {
            return this.type;
        }

        public void setType(String paramString) {
            this.type = paramString;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String paramString) {
            this._id = paramString;
        }
    }

    public class Trigger {
        private String _id;
        private String avatar;
        private String gender;
        private int lv;
        private String nickname;
        private String type;

        public Trigger(NotificationItem paramNotificationItem) {
        }

        public String getAvatar() {
            return this.avatar;
        }

        public void setAvatar(String paramString) {
            this.avatar = paramString;
        }

        public String getGender() {
            return this.gender;
        }

        public void setGender(String paramString) {
            this.gender = paramString;
        }

        public int getLv() {
            return this.lv;
        }

        public void setLv(int paramInt) {
            this.lv = paramInt;
        }

        public String getNickname() {
            return this.nickname;
        }

        public void setNickname(String paramString) {
            this.nickname = paramString;
        }

        public String getType() {
            return this.type;
        }

        public void setType(String paramString) {
            this.type = paramString;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String paramString) {
            this._id = paramString;
        }

        public Author toAuthor() {
            Author localAuthor = new Author();
            localAuthor.setLv(this.lv);
            localAuthor.setAvatar(this.avatar);
            localAuthor.setNickname(this.nickname);
            localAuthor.setType(this.type);
            return localAuthor;
        }
    }

}

