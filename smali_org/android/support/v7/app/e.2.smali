.class final Landroid/support/v7/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/app/d;


# direct methods
.method constructor <init>(Landroid/support/v7/app/d;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->a(Landroid/support/v7/app/d;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->b(Landroid/support/v7/app/d;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->b(Landroid/support/v7/app/d;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 126
    :goto_0
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->h(Landroid/support/v7/app/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v2}, Landroid/support/v7/app/d;->g(Landroid/support/v7/app/d;)Landroid/support/v7/app/B;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->c(Landroid/support/v7/app/d;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->d(Landroid/support/v7/app/d;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->d(Landroid/support/v7/app/d;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->e(Landroid/support/v7/app/d;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->f(Landroid/support/v7/app/d;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->f(Landroid/support/v7/app/d;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
