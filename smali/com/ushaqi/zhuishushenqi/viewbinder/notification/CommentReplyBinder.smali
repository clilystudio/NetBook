.class public Lcom/ushaqi/zhuishushenqi/viewbinder/notification/CommentReplyBinder;
.super Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;
.source "SourceFile"


# static fields
.field public static final LABEL:Ljava/lang/String; = "comment_reply"


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;-><init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getIconRes()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f02019a

    return v0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/CommentReplyBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/CommentReplyBinder;->getPostIntent(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/CommentReplyBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->buildRepliedInfoForCommentReply()Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    move-result-object v1

    .line 37
    const-string v2, "KEY_POST_REPLIER_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "comment_reply"

    return-object v0
.end method

.method public getMainText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/CommentReplyBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/CommentReplyBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getMyComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
