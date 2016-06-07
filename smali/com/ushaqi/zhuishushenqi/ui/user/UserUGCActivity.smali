.class public Lcom/ushaqi/zhuishushenqi/ui/user/UserUGCActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 25
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserUGCActivity;->b:I

    .line 26
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fragmentTag0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fragmentTag1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fragmentTag2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserUGCActivity;->c:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method public final h()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5df2\u53d1\u5e03"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8349\u7a3f\u7bb1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6536\u85cf\u5939"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final i()[Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/MyUGCListFragment;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/MyUGCListFragment;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const-string v0, "\u6211\u7684\u4e66\u5355"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserUGCActivity;->b(Ljava/lang/String;)V

    .line 21
    return-void
.end method
