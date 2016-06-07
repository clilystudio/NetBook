.class final Landroid/support/v7/internal/view/i;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private synthetic c:Landroid/support/v7/internal/view/h;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/h;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    iput-object p1, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 109
    iput-boolean v0, p0, Landroid/support/v7/internal/view/i;->a:Z

    .line 110
    iput v0, p0, Landroid/support/v7/internal/view/i;->b:I

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget v0, p0, Landroid/support/v7/internal/view/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/internal/view/i;->b:I

    iget-object v1, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v1}, Landroid/support/v7/internal/view/h;->c(Landroid/support/v7/internal/view/h;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 1124
    :cond_0
    iput v2, p0, Landroid/support/v7/internal/view/i;->b:I

    .line 1125
    iput-boolean v2, p0, Landroid/support/v7/internal/view/i;->a:Z

    .line 1126
    iget-object v0, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v0}, Landroid/support/v7/internal/view/h;->b(Landroid/support/v7/internal/view/h;)V

    .line 137
    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Landroid/support/v7/internal/view/i;->a:Z

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/i;->a:Z

    .line 118
    iget-object v0, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    goto :goto_0
.end method
