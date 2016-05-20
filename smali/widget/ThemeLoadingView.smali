.class public Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

.field private b:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

.field private c:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;->LIGHT:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->c:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->d:Z

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;Z)Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->d:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->c:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;->LIGHT:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    if-ne v0, v1, :cond_0

    .line 61
    const v0, 0x7f0200c0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->setBackgroundResource(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const v0, 0x7f0200bf

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private d()Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->c:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;->LIGHT:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->b:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->d()Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    move-result-object v0

    .line 70
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->d:Z

    if-eqz v1, :cond_0

    .line 71
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->d:Z

    .line 72
    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->setVisibility(I)V

    .line 73
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->a()V

    .line 75
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 45
    if-eqz p1, :cond_1

    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;->DARK:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    .line 1029
    :goto_0
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->c:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    .line 1030
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->c:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;->LIGHT:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    if-ne v0, v2, :cond_2

    .line 1031
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->b:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->setVisibility(I)V

    .line 1037
    :goto_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->c()V

    .line 1038
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->d()Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1039
    :goto_2
    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->a()V

    .line 46
    :cond_0
    return-void

    .line 45
    :cond_1
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;->LIGHT:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView$Mode;

    goto :goto_0

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->b:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1038
    goto :goto_2
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->d()Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    move-result-object v0

    .line 80
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->d:Z

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/aC;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/aC;-><init>(Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->a(Lcom/ushaqi/zhuishushenqi/widget/ah;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 51
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->setPadding(IIII)V

    .line 53
    const v0, 0x7f0c0130

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    .line 54
    const v0, 0x7f0c0131

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->b:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    .line 56
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->c()V

    .line 57
    return-void
.end method
