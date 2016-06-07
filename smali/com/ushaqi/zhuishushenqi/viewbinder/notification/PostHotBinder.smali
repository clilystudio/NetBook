.class public Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostHotBinder;
.super Lcom/ushaqi/zhuishushenqi/viewbinder/notification/OfficialNotifBinder;
.source "SourceFile"


# static fields
.field public static final LABEL:Ljava/lang/String; = "post_hot"

.field public static final MAIN_TEXT:Ljava/lang/String; = "\u4f60\u7684\u5e16\u5b50\u88ab\u8bbe\u4e3a\u70ed\u95e8\u5566\uff0c\u793e\u533a\u79bb\u7a7a\u865a\u5bc2\u5bde\u51b7\u66f4\u8fdc\u4e86\u4e00\u70b9~"


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
    .line 40
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostHotBinder;->getPostIcon()I

    move-result v0

    return v0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostHotBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getMyPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostHotBinder;->getPostIntent(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "post_hot"

    return-object v0
.end method

.method public getMainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "\u4f60\u7684\u5e16\u5b50\u88ab\u8bbe\u4e3a\u70ed\u95e8\u5566\uff0c\u793e\u533a\u79bb\u7a7a\u865a\u5bc2\u5bde\u51b7\u66f4\u8fdc\u4e86\u4e00\u70b9~"

    return-object v0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostHotBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getMyPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
