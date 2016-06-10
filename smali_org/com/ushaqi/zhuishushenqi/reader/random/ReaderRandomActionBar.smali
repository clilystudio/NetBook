.class public Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/umeng/update/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;I)V
    .locals 1

    .prologue
    .line 18
    .line 1079
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->b:Lcom/umeng/update/a;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->b:Lcom/umeng/update/a;

    invoke-interface {v0, p1}, Lcom/umeng/update/a;->a(I)V

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 38
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 1046
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1047
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/widget/am;->k(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1048
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    const v0, 0x7f0c042e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1051
    const v0, 0x7f0c042f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->a:Landroid/widget/TextView;

    .line 1053
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/c;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/c;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;)V

    .line 1060
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method public setOnBtnClickListener$3ce42dcd(Lcom/umeng/update/a;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->b:Lcom/umeng/update/a;

    .line 86
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method
