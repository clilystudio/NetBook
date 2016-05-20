.class public Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/widget/aB;

.field private b:Landroid/view/View$OnClickListener;

.field mClose:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0463
    .end annotation
.end field

.field mContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0029
    .end annotation
.end field

.field mNegative:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0464
    .end annotation
.end field

.field mPositive:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0465
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/aA;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/aA;-><init>(Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->b:Landroid/view/View$OnClickListener;

    .line 1041
    const/high16 v0, 0x41b00000

    invoke-static {p1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->setPadding(IIII)V

    .line 1042
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->setBackgroundColor(I)V

    .line 1044
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030161

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1045
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 1047
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->mNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1048
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->mClose:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;)Lcom/ushaqi/zhuishushenqi/widget/aB;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->a:Lcom/ushaqi/zhuishushenqi/widget/aB;

    return-object v0
.end method


# virtual methods
.method public setContentText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setOnCloseListener(Lcom/ushaqi/zhuishushenqi/widget/aB;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->a:Lcom/ushaqi/zhuishushenqi/widget/aB;

    .line 53
    return-void
.end method

.method public setPositiveListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->mPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
