.class public Lcom/ushaqi/zhuishushenqi/ui/user/UserTopicActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u53d1\u5e03\u7684\u8bdd\u9898"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u6536\u85cf\u7684\u8bdd\u9898"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final i()[Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const-string v0, "\u8bdd\u9898"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserTopicActivity;->b(Ljava/lang/String;)V

    .line 18
    return-void
.end method
