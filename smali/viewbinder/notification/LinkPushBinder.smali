.class public Lcom/ushaqi/zhuishushenqi/viewbinder/notification/LinkPushBinder;
.super Lcom/ushaqi/zhuishushenqi/viewbinder/notification/OfficialNotifBinder;
.source "SourceFile"


# static fields
.field public static final LABEL:Ljava/lang/String; = "link_push"


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/OfficialNotifBinder;-><init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getIconRes()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f02019b

    return v0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/LinkPushBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/LinkPushBinder;->getWebIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "link_push"

    return-object v0
.end method

.method public getMainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/LinkPushBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/LinkPushBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getLinkTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
