.class public final Landroid/support/v7/internal/widget/W;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    instance-of v0, p0, Landroid/support/v7/internal/widget/W;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/support/v7/internal/widget/W;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/W;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 36
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v7/internal/widget/W;->a:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/support/v7/internal/widget/X;

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/Y;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/X;-><init>(Landroid/content/res/Resources;Landroid/support/v7/internal/widget/Y;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/W;->a:Landroid/content/res/Resources;

    .line 50
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/W;->a:Landroid/content/res/Resources;

    return-object v0
.end method
