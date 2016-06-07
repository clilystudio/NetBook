.class public final Landroid/support/v7/widget/aZ;
.super Landroid/support/v7/app/b;
.source "SourceFile"


# instance fields
.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 1805
    invoke-direct {p0, v0, v0}, Landroid/support/v7/app/b;-><init>(II)V

    .line 1798
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aZ;->b:I

    .line 1806
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/aZ;->a:I

    .line 1807
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1801
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1798
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aZ;->b:I

    .line 1802
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/b;)V
    .locals 1

    .prologue
    .line 1825
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/support/v7/app/b;)V

    .line 1798
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aZ;->b:I

    .line 1826
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/aZ;)V
    .locals 1

    .prologue
    .line 1819
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/support/v7/app/b;)V

    .line 1798
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aZ;->b:I

    .line 1821
    iget v0, p1, Landroid/support/v7/widget/aZ;->b:I

    iput v0, p0, Landroid/support/v7/widget/aZ;->b:I

    .line 1822
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1836
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1798
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aZ;->b:I

    .line 1837
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1829
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1798
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aZ;->b:I

    .line 2840
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/aZ;->leftMargin:I

    .line 2841
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/aZ;->topMargin:I

    .line 2842
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/aZ;->rightMargin:I

    .line 2843
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/aZ;->bottomMargin:I

    .line 1833
    return-void
.end method
