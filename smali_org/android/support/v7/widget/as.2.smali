.class final Landroid/support/v7/widget/as;
.super Landroid/support/v7/widget/aj;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 3965
    iput-object p1, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/aj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;B)V
    .locals 0

    .prologue
    .line 3965
    invoke-direct {p0, p1}, Landroid/support/v7/widget/as;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 4017
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4018
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4023
    :goto_0
    return-void

    .line 4020
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 4021
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 3968
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 3969
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    .line 3976
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/aw;->a(Landroid/support/v7/widget/aw;Z)Z

    .line 3977
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;)V

    .line 3979
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3980
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3982
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 3994
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 3995
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/n;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3996
    invoke-direct {p0}, Landroid/support/v7/widget/as;->b()V

    .line 3998
    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 2

    .prologue
    .line 4002
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 4003
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/n;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4004
    invoke-direct {p0}, Landroid/support/v7/widget/as;->b()V

    .line 4006
    :cond_0
    return-void
.end method
