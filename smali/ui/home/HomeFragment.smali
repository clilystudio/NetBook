.class public abstract Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 24
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/a/b;->b(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 18
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/a/b;->a(Ljava/lang/String;)V

    .line 19
    return-void
.end method
