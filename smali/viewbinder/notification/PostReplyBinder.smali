.class public Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostReplyBinder;
.super Lcom/ushaqi/zhuishushenqi/viewbinder/notification/UnimportatntNotifBinder;
.source "SourceFile"


# static fields
.field public static final LABEL:Ljava/lang/String; = "post_reply"


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/UnimportatntNotifBinder;-><init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getIconRes()I
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostReplyBinder;->getPostIcon()I

    move-result v0

    return v0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostReplyBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getMyPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostReplyBinder;->getPostIntent(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostReplyBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->toAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 39
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->getFloor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->setFloor(I)V

    .line 40
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->setCommentId(Ljava/lang/String;)V

    .line 41
    const-string v2, "KEY_POST_REPLIER_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "post_reply"

    return-object v0
.end method

.method public getMainText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    const-string v0, "%s\uff1a%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostReplyBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->getNickname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 25
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostReplyBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getComment()Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot$NotifComment;->getContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 23
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostReplyBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getMyPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
