.class final Landroid/support/v7/widget/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/L;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/L;)V
    .locals 0

    .prologue
    .line 1060
    iput-object p1, p0, Landroid/support/v7/widget/M;->a:Landroid/support/v7/widget/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Landroid/support/v7/widget/M;->a:Landroid/support/v7/widget/L;

    invoke-virtual {v0}, Landroid/support/v7/widget/L;->d()Landroid/view/View;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Landroid/support/v7/widget/M;->a:Landroid/support/v7/widget/L;

    invoke-virtual {v0}, Landroid/support/v7/widget/L;->c()V

    .line 1067
    :cond_0
    return-void
.end method
