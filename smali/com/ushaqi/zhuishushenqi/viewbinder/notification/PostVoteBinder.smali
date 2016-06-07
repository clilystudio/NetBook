.class public Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostVoteBinder;
.super Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;
.source "SourceFile"


# static fields
.field public static final LABEL:Ljava/lang/String; = "post_vote"


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;-><init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected getIconRes()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f02019d

    return v0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostVoteBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getMyPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostVoteBinder;->getPostIntent(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "post_vote"

    return-object v0
.end method

.method public getMainText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    const-string v0, "%s \u53c2\u4e0e\u4e86\u6295\u7968"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostVoteBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->getNickname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostVoteBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getMyPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
