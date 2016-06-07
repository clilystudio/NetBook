.class public Lcom/ushaqi/zhuishushenqi/viewbinder/notification/UnknowBinder;
.super Lcom/ushaqi/zhuishushenqi/viewbinder/notification/OfficialNotifBinder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/OfficialNotifBinder;-><init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getIconRes()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f02019c

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "unknown"

    return-object v0
.end method

.method public getMainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "\u4f60\u6709\u4e00\u6761\u65b0\u6d88\u606f\uff0c\u5f53\u524d\u7248\u672c\u65e0\u529b\u6253\u5f00\uff0c\u8bf7\u5b89\u88c5\u6700\u65b0\u7248\u672c"

    return-object v0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "\u5f53\u524d\u7248\u672c\u4e0d\u652f\u6301\u67e5\u770b\u8be5\u6d88\u606f"

    return-object v0
.end method
