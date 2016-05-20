.class public Lcom/ushaqi/zhuishushenqi/viewbinder/notification/FollowBinder;
.super Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;
.source "SourceFile"


# static fields
.field public static final LABEL:Ljava/lang/String; = "follow"


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
    .line 49
    const v0, 0x7f02019a

    return v0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/User;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/FollowBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getJumpTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/User;->setId(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/FollowBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/User;->setNickname(Ljava/lang/String;)V

    .line 1166
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1167
    const-string v2, "USER_ID"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    const-string v2, "USER_NAME"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "follow"

    return-object v0
.end method

.method public getMainText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/FollowBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/FollowBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, ""

    return-object v0
.end method
