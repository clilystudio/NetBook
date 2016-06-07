.class final Lcom/ushaqi/zhuishushenqi/reader/random/h;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/h;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 428
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 429
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x3

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/h;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v0

    aget-object v0, v0, p2

    .line 422
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 423
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 416
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
