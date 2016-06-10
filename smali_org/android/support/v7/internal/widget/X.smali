.class final Landroid/support/v7/internal/widget/X;
.super Landroid/support/v7/internal/widget/I;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v7/internal/widget/Y;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/support/v7/internal/widget/Y;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/I;-><init>(Landroid/content/res/Resources;)V

    .line 62
    iput-object p2, p0, Landroid/support/v7/internal/widget/X;->a:Landroid/support/v7/internal/widget/Y;

    .line 63
    return-void
.end method


# virtual methods
.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/I;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Landroid/support/v7/internal/widget/X;->a:Landroid/support/v7/internal/widget/Y;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/internal/widget/Y;->a(ILandroid/graphics/drawable/Drawable;)Z

    .line 76
    :cond_0
    return-object v0
.end method
