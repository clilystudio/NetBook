.class public Lcom/ushaqi/zhuishushenqi/widget/PostFlag;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field mDistillateFlag:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c022f
    .end annotation
.end field

.field mHotFlag:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c013c
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1032
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030137

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1033
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    new-array v3, v5, [Ljava/lang/String;

    const-string v2, "distillate"

    aput-object v2, v3, v1

    const-string v2, "focus"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "hot"

    aput-object v4, v3, v2

    move v2, v1

    .line 51
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v4, v3, v2

    .line 52
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    :goto_1
    return v0

    .line 51
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 56
    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    const-string v2, "hot"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "focus"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->mHotFlag:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->mDistillateFlag:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    :goto_0
    return v0

    .line 41
    :cond_1
    const-string v2, "distillate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->mDistillateFlag:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->mHotFlag:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 46
    goto :goto_0
.end method
