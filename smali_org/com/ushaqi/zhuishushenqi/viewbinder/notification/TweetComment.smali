.class public Lcom/ushaqi/zhuishushenqi/viewbinder/notification/TweetComment;
.super Lcom/ushaqi/zhuishushenqi/viewbinder/notification/TweetBinder;
.source "SourceFile"


# static fields
.field public static final LABEL:Ljava/lang/String; = "comment_tweet"


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/TweetBinder;-><init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getIconRes()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f02019c

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "comment_tweet"

    return-object v0
.end method
