.class public Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field mSlmReaderAppName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c03ee
    .end annotation
.end field

.field mSlmReaderAppSize:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c03ef
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->a(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "wefijwefijweifjwiefjwefiwjefi"

    const-string v1, "12312"

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->setOrientation(I)V

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;I)F
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x3

    .line 1082
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 23
    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030141

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 48
    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/ai;

    invoke-direct {v2, p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/widget/ai;-><init>(Lcom/ushaqi/zhuishushenqi/widget/MenuGameTitle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 79
    return-void
.end method
