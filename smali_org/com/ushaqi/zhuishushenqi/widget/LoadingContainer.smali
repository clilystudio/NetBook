.class public Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const v4, 0x7f03011c

    const/4 v3, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->LoadingContainer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 26
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->b:Landroid/view/View;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->c:Landroid/view/View;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 55
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must set one content child!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->a:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->addView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->addView(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->a()V

    .line 64
    return-void
.end method
