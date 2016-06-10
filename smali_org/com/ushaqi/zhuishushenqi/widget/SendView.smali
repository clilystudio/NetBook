.class public Lcom/ushaqi/zhuishushenqi/widget/SendView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field mSendContent:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0474
    .end annotation
.end field

.field mSendView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0475
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/SendView;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/SendView;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendContent:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public final b()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendContent:Landroid/widget/EditText;

    return-object v0
.end method

.method public final c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 33
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 35
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/SendView;->d()V

    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendContent:Landroid/widget/EditText;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/ay;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/ay;-><init>(Lcom/ushaqi/zhuishushenqi/widget/SendView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 50
    return-void
.end method

.method public setSendContent(Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendContent:Landroid/widget/EditText;

    .line 66
    return-void
.end method

.method public setSendView(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendView:Landroid/widget/ImageView;

    .line 74
    return-void
.end method
