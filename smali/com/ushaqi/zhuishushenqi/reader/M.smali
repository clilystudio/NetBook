.class public final Lcom/ushaqi/zhuishushenqi/reader/M;
.super Landroid/widget/Scroller;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/N;

    invoke-direct {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/N;-><init>(Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;)V

    invoke-direct {p0, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 287
    return-void
.end method


# virtual methods
.method public final startScroll(IIIII)V
    .locals 6

    .prologue
    .line 291
    const/16 v5, 0x190

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 292
    return-void
.end method
