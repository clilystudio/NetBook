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
    private NotifPost myPost;
    private NotifPost post;
    private String subTitle;
    private String title;
    private NotificationItem$Trigger trigger;
    private String type = "post_reply";
    private String user;

    public NotificationItem() {
    }

    public NotificationItem(String string) {
        this.type = string;
    }

    public ReplyeeInfo buildRepliedInfoForCommentReply() {
        if (!this.type.equals("comment_reply")) {
            throw new RuntimeException("Type must be comment_reply");
        }
        CommonReplyeeInfo commonReplyeeInfo = new CommonReplyeeInfo();
        commonReplyeeInfo.setFloor(this.getComment().getFloor());
        commonReplyeeInfo.setAuthor(this.getTrigger().toAuthor());
        commonReplyeeInfo.setCommentId(this.getComment().get_id());
        return commonReplyeeInfo;
    }

    public ReplyeeInfo buildRepliedInfoForPostReply() {
        if (!this.type.equals("post_reply")) {
            throw new RuntimeException("Type must be post_reply");
        }
        CommonReplyeeInfo commonReplyeeInfo = new CommonReplyeeInfo();
        commonReplyeeInfo.setFloor(this.getComment().getFloor());
        commonReplyeeInfo.setAuthor(this.getTrigger().toAuthor());
        commonReplyeeInfo.setCommentId(this.getComment().get_id());
        return commonReplyeeInfo;
    }

    public NotificationRoot$NotifComment getComment() {
        return this.comment;
    }

    public void setComment(NotificationRoot$NotifComment notificationRoot$NotifComment) {
        this.comment = notificationRoot$NotifComment;
    }

    public String getCreated() {
        return this.created;
    }

    public void setCreated(String string) {
        this.created = string;
    }

    public String getHeader() {
        return this.header;
    }

    public void setHeader(String string) {
        this.header = string;
    }

    public String getJumpTo() {
        return this.jumpTo;
    }

    public void setJumpTo(String string) {
        this.jumpTo = string;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String string) {
        this.link = string;
    }

    public String getLinkTitle() {
        return this.linkTitle;
    }

    public void setLinkTitle(String string) {
        this.linkTitle = string;
    }

    public NotificationRoot$NotifComment getMyComment() {
        return this.myComment;
    }

    public void setMyComment(NotificationRoot$NotifComment notificationRoot$NotifComment) {
        this.myComment = notificationRoot$NotifComment;
    }

    public NotifPost getMyPost() {
        return this.myPost;
    }

    public void setMyPost(NotifPost notifPost) {
        this.myPost = notifPost;
    }

    public NotifPost getPost() {
        return this.post;
    }

    public void setPost(NotifPost notifPost) {
        this.post = notifPost;
    }

    public Date getServerDate() {
        return t.b((String) this.getCreated());
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public void setSubTitle(String string) {
        this.subTitle = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public NotificationItem$Trigger getTrigger() {
        return this.trigger;
    }

    public void setTrigger(NotificationItem$Trigger notificationItem$Trigger) {
        this.trigger = notificationItem$Trigger;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String string) {
        this.type = string;
    }

    public String getUser() {
        return this.user;
    }

    public void setUser(String string) {
        this.user = string;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public boolean isPush() {
        if (this.getTrigger() == null) {
            return true;
        }
        return false;
    }

    public boolean isPushPost() {
        if (this.isPush() && this.getPost() != null) {
            return true;
        }
        return false;
    }

    public boolean isType(String string) {
        return string.equals(this.type);
    }
    public class NotificationItem$Trigger {
        final /* synthetic */ NotificationItem this$0;
        private String _id;
        private String avatar;
        private String gender;
        private int lv;
        private String nickname;
        private String type;

        public NotificationItem$Trigger(NotificationItem notificationItem) {
            this.this$0 = notificationItem;
        }

        public String getAvatar() {
            return this.avatar;
        }

        public void setAvatar(String string) {
            this.avatar = string;
        }

        public String getGender() {
            return this.gender;
        }

        public void setGender(String string) {
            this.gender = string;
        }

        public int getLv() {
            return this.lv;
        }

        public void setLv(int n) {
            this.lv = n;
        }

        public String getNickname() {
            return this.nickname;
        }

        public void setNickname(String string) {
            this.nickname = string;
        }

        public String getType() {
            return this.type;
        }

        public void setType(String string) {
            this.type = string;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }

        public Author toAuthor() {
            Author author = new Author();
            author.setLv(this.lv);
            author.setAvatar(this.avatar);
            author.setNickname(this.nickname);
            author.setType(this.type);
            return author;
        }
    }
    public class NotificationItem$NotifPost {
        private String _id;
        private String title;
        private String type;

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String string) {
            this.title = string;
        }

        public String getType() {
            return this.type;
        }

        public void setType(String string) {
            this.type = string;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }
    }

}
