.class public Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 27
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03017e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    const v0, 0x7f0c047c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->a:Landroid/widget/TextView;

    .line 29
    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010004

    invoke-static {v1, v2}, Landroid/support/design/widget/am;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001e

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->setBackgroundResource(I)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010038

    invoke-static {v1, v2}, Landroid/support/design/widget/am;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010006

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->b:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
