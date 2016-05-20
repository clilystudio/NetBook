.class public Lcom/ushaqi/zhuishushenqi/model/NotificationItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMMENT_LIKE:Ljava/lang/String; = "comment_like"

.field public static final COMMENT_REPLY:Ljava/lang/String; = "comment_reply"

.field public static final COMMENT_TWEET:Ljava/lang/String; = "comment_tweet"

.field public static final FOLLOW:Ljava/lang/String; = "follow"

.field public static final LINK_PUSH:Ljava/lang/String; = "link_push"

.field public static final POST_DISTILLATE:Ljava/lang/String; = "post_distillate"

.field public static final POST_HOT:Ljava/lang/String; = "post_hot"

.field public static final POST_LIKE:Ljava/lang/String; = "post_like"

.field public static final POST_PUSH:Ljava/lang/String; = "post_push"

.field public static final POST_REPLY:Ljava/lang/String; = "post_reply"

.field public static final POST_VOTE:Ljava/lang/String; = "post_vote"

.field public static final REPLY_COMMENT:Ljava/lang/String; = "reply_comment"

.field public static final RETWEET:Ljava/lang/String; = "retweet"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private _id:Ljava/lang/String;

.field private comment:Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

.field private created:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private jumpTo:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private linkTitle:Ljava/lang/String;

.field private myComment:Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

.field private myPost:Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

.field private post:Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trigger:Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

.field private type:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "post_reply"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->type:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "post_reply"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->type:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->type:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public buildRepliedInfoForCommentReply()Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->type:Ljava/lang/String;

    const-string v1, "comment_reply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Type must be comment_reply"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;-><init>()V

    .line 192
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->getFloor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->setFloor(I)V

    .line 193
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->toAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 194
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->setCommentId(Ljava/lang/String;)V

    .line 196
    return-object v0
.end method

.method public buildRepliedInfoForPostReply()Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->type:Ljava/lang/String;

    const-string v1, "post_reply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Type must be post_reply"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;-><init>()V

    .line 206
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->getFloor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->setFloor(I)V

    .line 207
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->toAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 208
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->setCommentId(Ljava/lang/String;)V

    .line 210
    return-object v0
.end method

.method public getComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->comment:Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->created:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getJumpTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->jumpTo:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->linkTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMyComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->myComment:Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    return-object v0
.end method

.method public getMyPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->myPost:Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    return-object v0
.end method

.method public getPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->post:Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    return-object v0
.end method

.method public getServerDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getCreated()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/t;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->trigger:Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->user:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isPush()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPushPost()Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->isPush()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setComment(Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->comment:Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    .line 152
    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->created:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->header:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setJumpTo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->jumpTo:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->link:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setLinkTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->linkTitle:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setMyComment(Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->myComment:Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    .line 104
    return-void
.end method

.method public setMyPost(Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->myPost:Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    .line 80
    return-void
.end method

.method public setPost(Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->post:Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    .line 112
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->subTitle:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->title:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setTrigger(Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->trigger:Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    .line 88
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->type:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->user:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->_id:Ljava/lang/String;

    .line 96
    return-void
.end method
