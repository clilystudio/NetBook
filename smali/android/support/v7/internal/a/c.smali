.class final Landroid/support/v7/internal/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/v;


# instance fields
.field private a:Z

.field private synthetic b:Landroid/support/v7/internal/a/b;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/a/b;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Landroid/support/v7/internal/a/c;->b:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/a/b;B)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1}, Landroid/support/v7/internal/a/c;-><init>(Landroid/support/v7/internal/a/b;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/support/v7/internal/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 592
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/a/c;->a:Z

    .line 593
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->b:Landroid/support/v7/internal/a/b;

    .line 3050
    const/4 v0, 0x0

    .line 593
    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->m()V

    .line 594
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->b:Landroid/support/v7/internal/a/b;

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/a/c;->a:Z

    goto :goto_0
.end method

.method public final a_(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->b:Landroid/support/v7/internal/a/b;

    .line 583
    const/4 v0, 0x0

    return v0
.end method
