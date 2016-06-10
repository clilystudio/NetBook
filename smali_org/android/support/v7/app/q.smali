.class final Landroid/support/v7/app/q;
.super Landroid/support/v7/app/p;
.source "SourceFile"


# instance fields
.field private n:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/p;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/q;->n:Z

    .line 30
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/q;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Landroid/support/v7/app/q;->n:Z

    return v0
.end method


# virtual methods
.method final a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/support/v7/app/r;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/r;-><init>(Landroid/support/v7/app/q;Landroid/view/Window$Callback;)V

    return-object v0
.end method
