.class public Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
.super Lcom/ushaqi/zhuishushenqi/model/Root;
.source "SourceFile"


# instance fields
.field private notifications:[Lcom/ushaqi/zhuishushenqi/model/NotificationItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Root;-><init>()V

    .line 6
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->notifications:[Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    .line 16
    return-void
.end method


# virtual methods
.method public getNotifications()[Lcom/ushaqi/zhuishushenqi/model/NotificationItem;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->notifications:[Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    return-object v0
.end method

.method public setNotifications([Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->notifications:[Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    .line 14
    return-void
.end method
